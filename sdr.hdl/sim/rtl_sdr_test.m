clear;
Fs=270833;
N = 4096;
hDsp=dsp.SpectrumAnalyzer('SampleRate',Fs);
hIQImbalance=comm.IQImbalanceCompensator;
Num=fir2(64, [0 .1 1], [0.2 0.4 1]);
dec=dsp.FIRDecimator('DecimationFactor', 1, 'Numerator', Num);
hAgc=comm.AGC('LoopMethod', 'Logarithmic','UpdatePeriod',128);
hDC1 = dsp.DCBlocker('Algorithm','IIR','Order', 10, 'NormalizedBandwidth', 0.001);

soc=rtl_sdr_connect();
fstart=100e6;
fstop=110e6;
w=25;
fq=[];
frames=floor((fstop-fstart)/Fs);
freq=fstart
frame=zeros(N*4, frames, w);
for i=1:frames
        soc=rtl_sdr_reset(soc);
        rtl_sdr_setFreqCorr(soc, 32);
        rtl_sdr_setRate(soc, Fs);
        rtl_sdr_setAgc(soc, 1);
        rtl_sdr_setFreq(soc, freq);
        
        for j=1:w
            input=step(hDC1, rtl_sdr_getData(soc, N*4));
            input=step(hIQImbalance, input);
            input=step(dec, input);
            input=step(hDC1, input);
            input=step(hAgc, input);
            frame(:,i,j)=input;
            step(hDsp, input);
        end
        freq=freq + Fs
end
close(soc);
parfor i=1:frames
    count = 0;
    for j=1:w
       
        input=frame(:,i,j);

        [Sx,alphao,fo] = mySsca(input,1,1/64,1/(4*N));

        myPlot(Sx,alphao,fo);  
        [c,d] = size(Sx);
        [Ades,Index] = sort(Sx(:),'descend');   % sort Sx by its element and store in Ades
        [Ridx,Cidx]  = ind2sub(size(Sx),Index); % corresponding row index and column index
        leng = length(Ades);

        noise_decision = myDecision_noise(Ades,Ridx,Cidx,leng,c,d);
        count = count + noise_decision;
    end
    if count < ceil(w/2)
        f=(i-1)*Fs+fstart;
        fprintf('found %f\n', f);
    end
end

