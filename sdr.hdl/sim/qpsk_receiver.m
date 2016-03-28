clear;
Rsym = 1250;         % Symbol rate (symbols/second)
nSamps = 8;         % Number of samples per symbol
decim=2;
frameSize=128;
% Calculate sampling frequency in Hz
Fs = Rsym * nSamps

fileId=fopen('capture.bin', 'r');
% txsigfull=(fread(fileId, 200000, 'int8')/2^7);

samps=5*30800;
txsigfull=((fread(fileId, 13000000, 'uint8=>double')-127)/2^7);
fclose(fileId);
txsigfull=txsigfull(10000001:end);

% in=txsigfull.*cos([0:length(txsigfull)-1]'.*pi/2);
% qa=txsigfull.*sin([0:length(txsigfull)-1]'.*pi/2);
% txsigfull=in+1i*qa;

txsigfull=txsigfull(1:2:end)+1i*txsigfull(2:2:end);
% FsReal=250000.000414;
% TReal=1/FsReal;
% FsTarget=250000;
% TTarget=1/FsTarget;
% time=[0:length(txsigfull)-1]/FsTarget;
% L=10;
% resampled=zeros(length(txsigfull),1);
% for t=L:length(txsigfull)-L-1
%     n=ceil(((t-1)*TTarget)/TReal);
%     resampled(t,1)=sum(txsigfull(n-L+1:n+L+1).*sinc(((t-1)*TTarget-[n-L:n+L]'.*TReal)/TReal));
% end
% txsigfull=resampled;

frames=floor(length(txsigfull)/samps);
txsigfull=reshape(txsigfull(1:frames*samps), samps,frames);

Num=fir1(256, .008, 'low');

agc=comm.AGC('LoopMethod','Logarithmic', 'MaximumGain',15, 'UpdatePeriod',77);
dec25=dsp.FIRDecimator('DecimationFactor', 25, 'Numerator', Num);

antialias=dsp.FIRFilter('Numerator', Num);
rxfilt=comm.RaisedCosineReceiveFilter('InputSamplesPerSymbol', nSamps,'DecimationFactor',decim);
equalizer=comm.MLSEEqualizer;

freqComp=comm.PSKCoarseFrequencyEstimator('SampleRate', Fs/decim, 'FrequencyResolution', 1);
freqPFO=comm.PhaseFrequencyOffset('SampleRate', Fs/decim, 'FrequencyOffsetSource', 'Input port');
freqPFO1=comm.PhaseFrequencyOffset('SampleRate', Fs*25, 'FrequencyOffsetSource', 'Input port');
sync=comm.CarrierSynchronizer('SamplesPerSymbol', nSamps/decim, 'Modulation', 'QPSK');
symsync=comm.SymbolSynchronizer('SamplesPerSymbol', nSamps/decim);
hMod=comm.QPSKModulator('BitInput', true);
refC=constellation(hMod);
hScope=comm.ConstellationDiagram('SamplesPerSymbol', 1, 'ReferenceConstellation', refC, 'XLimits', [-5 5], 'YLimits', [-5 5], 'ShowLegend', true);
pCorrelator=dsp.Crosscorrelator;
hSA=dsp.SpectrumAnalyzer('SampleRate',Fs*25);

demall=[];
fo=[];
for f=1:frames
    txsig=txsigfull(:, f);
    
%     txsig=step(freqPFO1, txsig, 41200-2250); 
%     step(hSA, txsig);
    txsig=step(freqPFO1, txsig, 41400-2500); 
%     txsig=step(antialias, txsig);

    txsig=step(dec25, txsig);
    txsig=step(agc, txsig);
    % matched filter
    rxsig=step(rxfilt,txsig);

    % frequency acquisition
    freqOffset=step(freqComp, rxsig);
    rxsig=step(freqPFO, rxsig, -freqOffset);
    

    % frequency tracking, carrier synch 

    [rxsig,phest]=step(sync, rxsig);
    fo=[fo; phest];
    %timing recovery
    
    dem=step(symsync, rxsig);
    demall=[demall; dem];
%     fprintf('%d %d\n', length(dem), length(rxsig));
%     if length(dem) == 50
%         dem=step(equalizer, dem);
%     end
%     if length(demall) > 200
%         step(hScope, demall(end-200:end));
%     end
end
% scatterplot(demall(2000:end));
% frame formation
pBarkerCode = [+1; +1; +1; +1; +1; -1; -1; +1; +1; -1; +1; -1; +1]; % Bipolar Barker Code
pBarkerCodeLength = length(pBarkerCode);
pModulatedHeader = sqrt(2)/2 * (-1-1i) * pBarkerCode;
z=abs(step(pCorrelator, demall, pModulatedHeader));
% plot(z);

ScramblerBase = 2;
ScramblerPolynomial = [1 1 1 0 1];
ScramblerInitialConditions = [0 0 0 0];
pDescrambler = comm.Descrambler(ScramblerBase, ScramblerPolynomial, ScramblerInitialConditions, 'ResetInputPort', true);
hDemod=comm.QPSKDemodulator('BitOutput', true);

frameIdx=find(z > 30);
frameDecoded=[];
bh=[];
for i=[1:length(frameIdx)-1]
    idx=frameIdx(i)-pBarkerCodeLength+1;
    frame=demall(idx:idx+77-1);
    
    % Phase offset estimation
    phaseEst = round(angle(mean(conj(pModulatedHeader) .* frame(1:pBarkerCodeLength)))*2/pi)/2*pi;
    
    % Compensating for the phase offset
    phShiftedData = frame .* exp(-1i*phaseEst);
    step(hScope, phShiftedData);
    frameBits=step(hDemod, phShiftedData);
    bh=[bh; frameBits(1:2*pBarkerCodeLength)'];
    deScr=step(pDescrambler, frameBits(2*pBarkerCodeLength+1:end),1);
    frameDecoded=[frameDecoded frameBits(2*pBarkerCodeLength+1:end)];
end

[rowNum, colNum] = size(frameDecoded);
for i=1:colNum
    data=frameDecoded(:,i);
    data=reshape(data, 8, length(data)/8);
    w=char(bi2de(data', 'left-msb'));
    fprintf('%d: %s\n', i, w);
end
