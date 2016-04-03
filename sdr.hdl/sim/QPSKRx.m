classdef QPSKRx < matlab.System
    % untitled10 Add summary here
    %
    % This template includes the minimum set of functions required
    % to define a System object with discrete state.
    
    properties (Access = private, Constant)
        Rsym = 1250;         % Symbol rate (symbols/second)
        nSamps = 8;         % Number of samples per symbol
        decim=2;
        frameSize=77;
        % Calculate sampling frequency in Hz
        Fs = QPSKRx.Rsym * QPSKRx.nSamps
        pBarkerCode = [+1; +1; +1; +1; +1; -1; -1; +1; +1; -1; +1; -1; +1]; % Bipolar Barker Code
        pBarkerCodeLength = length(QPSKRx.pBarkerCode);
        pModulatedHeader = sqrt(2)/2 * (-1-1i) * QPSKRx.pBarkerCode;
        ScramblerBase = 2;
        ScramblerPolynomial = [1 1 1 0 1];
        ScramblerInitialConditions = [0 0 0 0];
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
            obj.agc=comm.AGC('LoopMethod','Logarithmic', 'UpdatePeriod',77);
            obj.dec25=dsp.FIRDecimator('DecimationFactor', 25, 'Numerator', Num);
            obj.rxfilt=comm.RaisedCosineReceiveFilter('InputSamplesPerSymbol', obj.nSamps,'DecimationFactor',obj.decim);
            obj.freqComp=comm.PSKCoarseFrequencyEstimator('SampleRate', obj.Fs/obj.decim, 'FrequencyResolution', 1);
            obj.freqPFO=comm.PhaseFrequencyOffset('SampleRate', obj.Fs/obj.decim, 'FrequencyOffsetSource', 'Input port');
            obj.freqPFO1=comm.PhaseFrequencyOffset('SampleRate', obj.Fs*25, 'FrequencyOffsetSource', 'Input port');
            obj.sync=comm.CarrierSynchronizer('SamplesPerSymbol', obj.nSamps/obj.decim, 'Modulation', 'QPSK');
            obj.symsync=comm.SymbolSynchronizer('SamplesPerSymbol', obj.nSamps/obj.decim);
            obj.pDescrambler = comm.Descrambler(obj.ScramblerBase, obj.ScramblerPolynomial, obj.ScramblerInitialConditions, 'ResetInputPort', true);
            obj.hDemod=comm.QPSKDemodulator('BitOutput', true);
            obj.pCorrelator=dsp.Crosscorrelator;
            obj.pBuffer=zeros(77*2,1)+1i*zeros(77*2,1);
            obj.pBufferLen=0;
            obj.pDemall=zeros(77*2,1)+1i*zeros(77*2,1);
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
            
            
            
            obj.pDemall(obj.pDemallLen+1:obj.pDemallLen+length(dem))=dem;
            obj.pDemallLen=obj.pDemallLen+length(dem);
            if obj.pDemallLen >= 77
                demt = obj.pDemall(1:77);
                obj.pDemall(1:77)=obj.pDemall(78:end);
                obj.pDemallLen=obj.pDemallLen-77;
                % frame formation
                z=abs(step(obj.pCorrelator, demt, obj.pModulatedHeader));
                index=find(z > 30, 1);
                idx=1;
                if ~isempty(index)
                    idx=index(1);
                    if idx>obj.pBarkerCodeLength
                        s=demt(1:idx-obj.pBarkerCodeLength);    
                        obj.pBuffer(obj.pBufferLen+1:obj.pBufferLen+length(s))=s;
                        obj.pBufferLen=obj.pBufferLen+length(s);
                    end
                end
                if obj.pBufferLen-obj.syncDelay+1>=obj.frameSize
                    frame=obj.pBuffer(obj.syncDelay:obj.syncDelay+77-1);
                    s=demt(idx-obj.pBarkerCodeLength+1:end);
                    obj.pBuffer(1:length(s))=s;
                    obj.pBufferLen=length(s);
                    obj.syncDelay=1;
                    phaseEst = round(angle(mean(conj(obj.pModulatedHeader) .* frame(1:obj.pBarkerCodeLength)))*2/pi)/2*pi;

                    % Compensating for the phase offset
                    phShiftedData = frame .* exp(-1i*phaseEst);
                    frameBits=step(obj.hDemod, phShiftedData);
                    data=step(obj.pDescrambler, frameBits(2*obj.pBarkerCodeLength+1:end)',1);
                    data=reshape(data, 8, length(data)/8);
                    dd=bi2de(data', 'left-msb');
                    y=int8([dd(1:16); 1]);
                else
                    y=int8(zeros(17,1));
                end
            else
                y=int8(zeros(17,1));
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
