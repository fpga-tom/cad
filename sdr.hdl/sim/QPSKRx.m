classdef QPSKRx < matlab.System
    % untitled10 Add summary here
    %
    % This template includes the minimum set of functions required
    % to define a System object with discrete state.
    
    properties (Access = private, Constant)
        rp=[566,39,469,224,578,375,378,310,547,320,99,171,221,389,526,151,336,211,562,574,520,512,535,175,83,273,624,327,35,126,162,114,233,400,334,342,450,468,230,550,304,214,135,31,457,442,615,622,250,48,92,54,56,529,88,422,87,429,215,86,258,59,439,410,239,444,563,299,448,580,533,609,144,510,150,358,113,69,411,511,569,251,72,66,588,193,130,61,449,570,58,76,283,406,272,104,17,204,129,196,155,559,278,164,264,603,53,397,74,505,9,376,564,158,440,183,627,537,446,71,289,496,297,374,201,210,100,191,26,394,182,244,453,420,606,484,359,159,55,101,184,153,338,4,45,160,372,243,490,437,137,424,141,513,199,28,51,173,125,543,311,309,462,102,301,414,313,32,575,488,592,552,263,266,472,132,25,351,430,571,117,598,391,8,84,384,170,276,619,581,65,62,136,198,287,625,558,257,425,477,47,463,174,200,269,497,326,14,298,399,361,245,323,138,621,228,403,461,561,491,194,367,123,315,415,220,475,27,576,80,366,489,195,340,108,288,240,458,331,421,604,12,89,1,295,43,352,140,492,312,573,393,363,46,349,427,235,593,179,133,591,522,75,60,433,127,324,63,41,345,109,473,94,545,157,474,96,555,348,557,371,307,614,267,407,67,19,499,587,256,291,23,52,13,209,318,481,95,360,300,7,186,154,405,572,542,152,120,305,341,254,11,605,525,412,2,514,608,387,362,470,494,143,395,480,142,451,441,234,418,612,618,223,275,308,145,519,370,607,459,177,540,322,64,401,617,111,465,285,368,172,248,271,85,610,121,34,392,482,44,124,212,501,485,390,343,242,438,238,346,148,388,180,426,416,268,584,532,90,347,596,122,408,386,521,225,544,226,277,396,337,385,176,381,516,149,282,456,467,82,335,163,611,79,116,365,502,329,112,567,586,255,594,493,582,549,423,232,247,231,119,139,118,583,506,380,218,404,339,597,110,290,29,321,33,590,190,498,213,602,527,478,227,229,30,383,262,333,22,134,178,15,202,187,417,128,620,518,260,631,3,303,354,534,556,483,445,454,623,98,447,599,560,330,538,350,369,147,503,377,487,466,436,253,192,207,241,486,156,577,42,548,553,476,20,589,600,208,265,294,161,188,252,504,146,5,616,479,281,356,81,402,632,523,409,353,579,508,431,107,515,595,115,319,97,16,293,36,274,517,10,292,398,382,38,316,524,539,103,165,373,259,197,413,169,629,546,434,284,249,541,73,286,21,237,106,37,317,357,314,626,507,203,280,270,568,379,471,50,40,279,551,325,261,528,601,332,443,302,495,344,628,296,460,585,219,630,565,18,452,530,246,167,77,168,428,24,166,78,419,364,455,131,509,217,306,57,68,236,613,6,536,189,435,105,181,91,206,205,355,70,432,185,222,328,500,49,93,554,464,216,531];
        Rsym = 1250;         % Symbol rate (symbols/second)
        nSamps = 8;         % Number of samples per symbol
        decim=2;
        
        Nc = 8 % frame's codeword count
        
        % BCH decoder
        N = 255;
        K = 239;
        S = 63;
        
        % Calculate sampling frequency in Hz
        Fs = QPSKRx.Rsym * QPSKRx.nSamps
        pBarkerCode = [+1; +1; +1; +1; +1; -1; -1; +1; +1; -1; +1; -1; +1]; % Bipolar Barker Code
        pBarkerCodeLength = length(QPSKRx.pBarkerCode);
        pModulatedHeader = sqrt(2)/2 * (-1-1i) * QPSKRx.pBarkerCode;
        ScramblerBase = 2;
        ScramblerPolynomial = [1 1 1 0 1];
        ScramblerInitialConditions = [0 0 0 0];
        frameSize=((QPSKRx.N-QPSKRx.K+QPSKRx.S)*QPSKRx.Nc+QPSKRx.pBarkerCodeLength*2)/2;
    end
    
    properties (DiscreteState)
    end
    
    properties (Access = private)
        % Pre-computed constants.
        dec25
        agc
        rxfilt
        freqComp
        freqPFO
        freqPFO1
        sync
        symsync
        pDeinlv
        pBch
        pDescrambler
        hDemod
        pCorrelator
        pBuffer
        pBufferLen
        pDemall
        pDemallLen
        syncDelay
    end
    
    methods (Access = protected)
        function setupImpl(obj,u)
            Num=fir1(256, .008, 'low');
            obj.agc=comm.AGC('UpdatePeriod',106);
            obj.dec25=dsp.FIRDecimator('DecimationFactor', 25, 'Numerator', Num);
            obj.rxfilt=comm.RaisedCosineReceiveFilter('InputSamplesPerSymbol', obj.nSamps,'DecimationFactor',obj.decim);
            obj.freqComp=comm.PSKCoarseFrequencyEstimator('SampleRate', obj.Fs/obj.decim, 'FrequencyResolution', 1);
            obj.freqPFO=comm.PhaseFrequencyOffset('SampleRate', obj.Fs/obj.decim, 'FrequencyOffsetSource', 'Input port');
            obj.freqPFO1=comm.PhaseFrequencyOffset('SampleRate', obj.Fs*25, 'FrequencyOffsetSource', 'Input port');
            obj.sync=comm.CarrierSynchronizer('SamplesPerSymbol', obj.nSamps/obj.decim, 'Modulation', 'QPSK');
            obj.symsync=comm.SymbolSynchronizer('SamplesPerSymbol', obj.nSamps/obj.decim);
            obj.pDeinlv=comm.BlockDeinterleaver(obj.rp');
            gp = bchgenpoly(obj.N,obj.K, [], 'double');
            obj.pBch = comm.BCHDecoder(obj.N, obj.K, gp, obj.S);
            obj.pDescrambler = comm.Descrambler(obj.ScramblerBase, obj.ScramblerPolynomial, obj.ScramblerInitialConditions, 'ResetInputPort', true);
            obj.hDemod=comm.QPSKDemodulator('BitOutput', true);
            obj.pCorrelator=dsp.Crosscorrelator;
            obj.pDemall=zeros(obj.frameSize*2,1)+1i*zeros(obj.frameSize*2,1);
            obj.pDemallLen=0;
            obj.syncDelay=1;
        end
        
        function y = stepImpl(obj,u)
            txsig=(cast(u,'double')-127)/2^7;
            txsig=txsig(1:2:end)+1i*txsig(2:2:end);
            % frequency shift
            txsig=step(obj.freqPFO1, txsig, 41400+2500);
            % ddc
            txsig=step(obj.dec25, txsig);
            % agc
            txsig=step(obj.agc, txsig);
            % matched filter
            rxsig=step(obj.rxfilt,txsig);
            % frequency acquisition
            freqOffset=step(obj.freqComp, rxsig);
            rxsig=step(obj.freqPFO, rxsig, -freqOffset);
            % frequency tracking, carrier synch 
            rxsig=step(obj.sync, rxsig);
            % timing recovery
            dem=step(obj.symsync, rxsig);
            
            
            
            
            obj.pDemall((1:length(dem))+obj.pDemallLen)=dem;
            obj.pDemallLen=obj.pDemallLen+length(dem);
            y=int8(zeros(obj.S+1,1));
            while obj.pDemallLen >= obj.frameSize
                % frame formation
                sof=0;
                frame=obj.pDemall(1:obj.frameSize);
                while sof ~= obj.pBarkerCodeLength && obj.pDemallLen >= obj.frameSize
                    frame=obj.pDemall(1:obj.frameSize);
                    z=abs(step(obj.pCorrelator, frame, obj.pModulatedHeader));

                    [m,sof]=max(z);
                    soh=sof-obj.pBarkerCodeLength+1;
                    if soh < 1
                        soh = sof;
                    end
                    if soh > 1
                        obj.pDemall(1:end-soh+1)=obj.pDemall(soh:end);
                        obj.pDemallLen=obj.pDemallLen-soh+1;
                    end

                end
                
                if sof == obj.pBarkerCodeLength && obj.pDemallLen >= obj.frameSize
                    obj.pDemall(1:end-obj.frameSize)=obj.pDemall(obj.frameSize+1:end);
                    obj.pDemallLen=obj.pDemallLen-obj.frameSize;
                    
                    phaseEst = round(angle(mean(conj(obj.pModulatedHeader) .* frame(1:obj.pBarkerCodeLength)))*2/pi)/2*pi;

                    % Compensating for the phase offset
                    phShiftedData = frame .* exp(-1i*phaseEst);
                    frameBits=step(obj.hDemod, phShiftedData);
                    inlvData=step(obj.pDeinlv, frameBits(2*obj.pBarkerCodeLength+1:end));
                    encData=reshape(inlvData, obj.N-obj.K+obj.S, obj.Nc);
                    decData=zeros(obj.S, obj.Nc);
                    for i=1:obj.Nc
                        decData(:,i)=step(obj.pBch, encData(:,i));
                    end
                    data=step(obj.pDescrambler, decData(:),1);
                    data=reshape(data, 8, length(data)/8);
                    dd=bi2de(data', 'left-msb');
                    y=int8([dd(1:obj.S); 1]);
                else
                    y=int8(zeros(obj.S+1,1));
                end
            end
        end
        
        function resetImpl(obj)
            reset(obj.freqPFO1);
            reset(obj.dec25);
            reset(obj.agc);
            reset(obj.rxfilt);
            reset(obj.freqComp);
            reset(obj.freqPFO);
            reset(obj.sync);
            reset(obj.symsync);
        end
    end
end
