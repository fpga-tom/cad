clear;
Fc = 1e6;         % Carrier frequency (Hz)
Rsym = 1e6;         % Symbol rate (symbols/second)
nSamps = 4;         % Number of samples per symbol
EbNo = 15;
% Calculate sampling frequency in Hz
Fs = Rsym * nSamps;
UpsampleFactor=8;
Fs1 = Fs * UpsampleFactor;

T=1/Fs;





samples=10000
txdata=randi([0 3], samples, 1);
% txdata=repmat([1;0], samples,1);
pn=comm.PNSequence('Polynomial',[9 5 0], 'InitialConditions', [1 1 1 1 1 1 1 1 1],...
    'SamplesPerFrame', samples);
pnseq=step(pn);
data=txdata;%xor(txdata, pnseq);
% modulate 
modulator=comm.QPSKModulator;
bb=step(modulator, data);
% pulse shaping
txfilt=comm.RaisedCosineTransmitFilter('OutputSamplesPerSymbol', nSamps);
txsig=step(txfilt,bb);
% interpolate
txsig=interp(txsig, UpsampleFactor);
% frequency shift
carrier=exp(1i*(2*pi*(Fc+2060)*[0:1/Fs1:length(txsig)/Fs1-1/Fs1]'+2.483));
txsig=txsig.*carrier;
% noise
awgn=comm.AWGNChannel('EbNo',25);
txsig=step(awgn,txsig);
% channel delay
delay=dsp.Delay(3);
txsig=step(delay, txsig);


% frequency shift
carrier=exp(1i*(2*pi*(-Fc)*[0:1/Fs1:length(txsig)/Fs1-1/Fs1]'));
txsig=txsig.*carrier;
% decimate
txsig=decimate(txsig, UpsampleFactor);

% matched filter
rxfilt=comm.RaisedCosineReceiveFilter('InputSamplesPerSymbol', nSamps,'DecimationFactor',2);
rxsig=step(rxfilt,txsig);

% frequency tracking, carrier synch 
sync=comm.CarrierSynchronizer('SamplesPerSymbol', 2, 'Modulation', 'QPSK');
rxsig=step(sync, rxsig);

%timing recovery
symsync=comm.SymbolSynchronizer;
dem=step(symsync, rxsig);

demod=comm.BPSKDemodulator;
% demdata=step(demod, dem');
scatterplot(dem(9000:end));

