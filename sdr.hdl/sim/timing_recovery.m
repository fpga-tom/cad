clear;
Fs=16;
T=1/Fs;
Fpass=2;
Fstop=3;
Nf=10;

dfir = designfilt('differentiatorfir','FilterOrder',Nf, ...
    'PassbandFrequency',Fpass,'StopbandFrequency',Fstop, ...
    'SampleRate',Fs);
gdel=mean(grpdelay(dfir));
samples=5000
% txdata=randi([0 1], samples, 1);
txdata=repmat([1], samples,1);
pn=comm.PNSequence('Polynomial',[9 5 0], 'InitialConditions', [1 1 1 1 1 1 1 1 1],...
    'SamplesPerFrame', samples);
pnseq=step(pn);
data=xor(txdata, pnseq);
modulator=comm.BPSKModulator;
bb=step(modulator, data);
txfilt=comm.RaisedCosineTransmitFilter('OutputSamplesPerSymbol', 8);
txsig=step(txfilt,bb);
txsig1=txsig;
delay=dsp.Delay(3);
txsig=step(delay, txsig);
awgn=comm.AWGNChannel('EbNo',30);
txsig=step(awgn,txsig);
rxfilt=comm.RaisedCosineReceiveFilter('InputSamplesPerSymbol', 8,'DecimationFactor',2);
rxsig=step(rxfilt,txsig);
% scatterplot(rxsig);
demod=comm.BPSKDemodulator;

%plot(1:length(rxdata), rxdata);
arx=(rxsig);
s=zeros(1,30);
t=0;
td=[];
dem=[];

d=[0 0];
a=[0 0];
ip=2;
g=zeros(1,ip);
kh=zeros(1,ip);
dh=zeros(1,length(rxsig));

kh(end)=arx(1);
del=0;

dh=filter(dfir, arx)/T;
dh=dh(gdel+1:end);
qq=[];
for i=[0:4:length(dh)]


        if i>300 && i < length(dh)-300
            dd=sum(dh(i-300+1:i+300+1)'.*sinc(((i-t)*T-[i-300:i+300]*T)/T));
            k=sum(arx(i-300+1:i+300+1)'.*sinc(((i-t)*T-[i-300:i+300]*T)/T));
            dem=[dem sum(arx(i-300+1:i+300+1)'.*sinc(((i-t)*T-[i-300:i+300]*T)/T))];
%             dem=[dem arx(i)];

            qq=[qq k];

            s=[s(2:end) k*dd];
            t=t-1e-4*sum(s);

            td=[td t];
        end
        

end

demod=comm.BPSKDemodulator;
% demdata=step(demod, dem');
scatterplot(dem(4000:end));
% plot(1:length(td), td);

