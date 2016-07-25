clear;

Fs=270833*1;
% Fs=230000;
Ts=1/Fs;
N = 4096;


hDsp=dsp.SpectrumAnalyzer('SampleRate',Fs);
hIQImbalance=comm.IQImbalanceCompensator;
freqPFO=comm.PhaseFrequencyOffset('SampleRate', Fs, 'FrequencyOffsetSource', 'Input port');
Num=fir1(256, .3, 'high');
Num=fir2(64, [0 .1 1], [0.2 0.4 1]);
dec=dsp.FIRDecimator('DecimationFactor', 1, 'Numerator', Num);
hAgc=comm.AGC('LoopMethod', 'Logarithmic','UpdatePeriod',128);
hDC1 = dsp.DCBlocker('Algorithm','IIR','Order', 10, 'NormalizedBandwidth', 0.001);

fileId=fopen('../noise_capture.bin', 'r');
samps=4*N*2;
txsigfull=fread(fileId, samps*4096, 'uint8=>double');
% txsigfull=fread(fileId, samps*4096, 'single=>double');
fclose(fileId);

txsigfull=txsigfull(1:end);
frames=floor(length(txsigfull)/samps)
txsigfull=reshape(txsigfull(1:frames*samps), samps,frames);

for i=1:frames
    txsig=txsigfull(:,i);
    txsig=(cast(txsig,'double')-127)/2^7;
    txsig=complex(txsig(1:2:end), txsig(2:2:end));

    input=txsig(1:4*N);
    input=step(hIQImbalance, input);
    input=step(dec, input);
    input=step(hDC1, input);
    input=step(hAgc, input);
    step(hDsp, input);

    if i > 60
        [Sx,alphao,fo] = mySsca(input,1,1/64,1/(4*N));
        
        myPlot(Sx,alphao,fo);  
        [c,d] = size(Sx);
        [Ades,Index] = sort(Sx(:),'descend');   % sort Sx by its element and store in Ades
        [Ridx,Cidx]  = ind2sub(size(Sx),Index); % corresponding row index and column index
        leng = length(Ades);

        noise_decision = myDecision_noise(Ades,Ridx,Cidx,leng,c,d)
    end
end