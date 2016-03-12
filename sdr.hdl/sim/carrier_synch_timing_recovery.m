clear;
Fc = .5e6;         % Carrier frequency (Hz)
Rsym = 1e6;         % Symbol rate (symbols/second)
nSamps = 8;         % Number of samples per symbol
EbNo = 15;
% Calculate sampling frequency in Hz
Fs = Rsym * nSamps;

T=1/Fs;
Fpass=2;
Fstop=3;
Nf=10;
f=100;
phase=0;
freq=2*pi*Fc/Fs;

dfir = designfilt('differentiatorfir','FilterOrder',Nf, ...
    'PassbandFrequency',Fpass,'StopbandFrequency',Fstop, ...
    'SampleRate',Fs);
gdel=mean(grpdelay(dfir));
samples=5000
txdata=randi([0 1], samples, 1);
% txdata=repmat([1;0], samples,1);
pn=comm.PNSequence('Polynomial',[9 5 0], 'InitialConditions', [1 1 1 1 1 1 1 1 1],...
    'SamplesPerFrame', samples);
pnseq=step(pn);
data=xor(txdata, pnseq);
modulator=comm.BPSKModulator;
bb=step(modulator, data);
txfilt=comm.RaisedCosineTransmitFilter('OutputSamplesPerSymbol', nSamps);
txsig=step(txfilt,bb);

carrier=exp(1i*(2*pi*Fc*[0:1/Fs:length(txsig)/Fs-1/Fs]'+6.41708));
txsig=txsig.*carrier;

delay=dsp.Delay(4);
txsig=step(delay, txsig);


mi=zeros(1,nSamps);
mq=zeros(1,nSamps);
sk=zeros(1,nSamps);
ml=0;
qq=[];

time=[0:1/Fs:length(txsig)/Fs-1/Fs];
rtx=real(txsig);
rtx=rtx-mean(rtx);

rtxbb=[];
for i=[0:length(rtx)-1]
    I=cos(phase+ml);
    Q=sin(phase+ml);
	rtxbb=[rtxbb cos(phase+ml+pi)];
    
    mi=[mi(2:end) rtx(i+1)*I];
    mq=[mq(2:end) rtx(i+1)*Q];
    
    if mod(i,nSamps)==0
        zi=sum(mi);
        zq=sum(mq);

        sk=[sk(2:end) zi*zq];
        ml=ml-1e-4*sum(sk);
        qq=[qq ml];
    end
    phase=phase+freq;
	while phase>=2*pi
		phase=phase-2*pi;
	end
	while phase<=-2*pi
		phase=phase+2*pi;
	end
end
carrier=exp(1i*(2*pi*-Fc*[0:1/Fs:length(txsig)/Fs-1/Fs]'-ml));
txsig3=carrier;
txsig=txsig.*carrier;
txsig4=txsig;
awgn=comm.AWGNChannel('EbNo',25);
txsig=step(awgn,txsig);
rxfilt=comm.RaisedCosineReceiveFilter('InputSamplesPerSymbol', nSamps,'DecimationFactor',4);
rxsig=step(rxfilt,txsig);

demod=comm.BPSKDemodulator;


arx=(rxsig);
s=zeros(1,150);
t=0;
td=[];
dem=[];

dh=filter(dfir, arx)/T;
dh=dh(gdel+1:end);


for i=[0:nSamps/4:length(dh)]
        if i>100 && i < length(dh)-100                
            dd=sum(dh(i-100+1:i+100+1)'.*sinc(((i-t)*T-[i-100:i+100]*T)/T));
            k=sum(arx(i-100+1:i+100+1)'.*sinc(((i-t)*T-[i-100:i+100]*T)/T));
            dem=[dem sum(arx(i-100+1:i+100+1)'.*sinc(((i-t)*T-[i-100:i+100]*T)/T))];

            s=[s(2:end) k*dd];
            t=t-1e-5*sum(s);

            td=[td t];
        end    
end

demod=comm.BPSKDemodulator;
% demdata=step(demod, dem');
scatterplot(dem(4000:end));
% plot(1:length(td), td);

