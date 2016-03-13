clear;
Fc = 1e6;         % Carrier frequency (Hz)
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
samples=10000
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

carrier=exp(1i*(2*pi*(Fc-200)*[0:1/Fs:length(txsig)/Fs-1/Fs]'+2.284));
txsig=txsig.*carrier;
txsig1=txsig;
awgn=comm.AWGNChannel('EbNo',25);
txsig=step(awgn,txsig);

delay=dsp.Delay(4);
txsig=step(delay, txsig);


mi=zeros(1,nSamps);
mq=zeros(1,nSamps);
mif=zeros(1,nSamps);
mqf=zeros(1,nSamps);
sk=zeros(1,nSamps);
sf=zeros(1,nSamps);

ml=0;
mlf=0;
qq=[];

time=[0:1/Fs:length(txsig)/Fs-1/Fs];
rtx=real(txsig);
rtx=rtx-mean(rtx);

rtxbb=[];
old=0;
for i=[0:length(rtx)-1]
    I=cos(phase+ml);
    Q=sin(phase+ml);
	rtxbb=[rtxbb exp(1i*(phase+ml))];
    
    mi=[mi(2:end) rtx(i+1)*I];
    mq=[mq(2:end) rtx(i+1)*Q];

    mif=[mif(2:end) rtx(i+1)*I*sqrt(i*T)];    
    mqf=[mqf(2:end) rtx(i+1)*Q*sqrt(i*T)];
    
    qq=[qq freq];
        
    if mod(i,nSamps)==0        
    
        zi=sum(mi);
        zq=sum(mq);
        zif=sum(mif);
        zqf=sum(mqf);

        sk=[sk(2:end) zi*zq];
        sf=[sf(2:end) zif*zqf];
        ml1=ml;
        ml=ml-1e-4*sum(sk);
        freq=freq-1e-5*sum(sf);
    
    end

    phase=phase+freq;
	while phase>=2*pi
		phase=phase-2*pi;
	end
	while phase<=-2*pi
		phase=phase+2*pi;
	end
end

carrier=rtxbb';

txsig=txsig.*carrier;


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

L=10;
for i=[0:nSamps/4:length(dh)]
        if i>L && i < length(dh)-L
            dd=sum(dh(i-L+1:i+L+1)'.*sinc(((i-t)*T-[i-L:i+L]*T)/T));
            k=sum(arx(i-L+1:i+L+1)'.*sinc(((i-t)*T-[i-L:i+L]*T)/T));
            dem=[dem sum(arx(i-L+1:i+L+1)'.*sinc(((i-t)*T-[i-L:i+L]*T)/T))];

            s=[s(2:end) k*dd];
            t=t-1e-5*sum(s);

            td=[td t];
        end    
end

demod=comm.BPSKDemodulator;
% demdata=step(demod, dem');
scatterplot(dem(9000:end));
% plot(1:length(td), td);

