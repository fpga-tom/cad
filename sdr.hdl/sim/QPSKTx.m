classdef QPSKTx < matlab.System
    % QPSKTx Add summary here
    
    properties (Nontunable)
        
    end
    
    properties (DiscreteState)
    end
    
    properties (Access = private, Constant)
        Rsym = 1250;         % Symbol rate (symbols/second)
        nSamps = 8;         % Number of samples per symbol
        decim=2;
        frameSize=128;
        % Calculate sampling frequency in Hz
        Fs = QPSKTx.Rsym * QPSKTx.nSamps;
        ScramblerBase = 2;
        ScramblerPolynomial = [1 1 1 0 1];
        ScramblerInitialConditions = [0 0 0 0];
        bbc = [+1 +1 +1 +1 +1 -1 -1 +1 +1 -1 +1 -1 +1]; % Bipolar Barker Code
        ubc = ((QPSKTx.bbc + 1) / 2)'; % Unipolar Barker Code
        temp = (repmat(QPSKTx.ubc,1,2))';
        pHeader = QPSKTx.temp(:);
    end
    
    properties (Access = private)
        % Pre-computed constants.
        pScrambler
        hMod
        rrc
        lastIdx
    end
    
    methods (Access = protected)
        function setupImpl(obj,u)
            obj.pScrambler = comm.Scrambler(obj.ScramblerBase, obj.ScramblerPolynomial, obj.ScramblerInitialConditions, 'ResetInputPort', true);
            obj.hMod=comm.QPSKModulator('BitInput', true);
            obj.rrc=comm.RaisedCosineTransmitFilter('OutputSamplesPerSymbol', obj.nSamps);
            obj.lastIdx=0;
        end
        
        function y = stepImpl(obj,u)
            txdata=de2bi(u, 8, 'left-msb');
            txdata=txdata';
            txdata=txdata(:);
            scrData=step(obj.pScrambler, txdata, 1);
            data=step(obj.hMod, [obj.pHeader; scrData]);
            sig=step(obj.rrc, data);
            qad=real(sig).*cos([obj.lastIdx:obj.lastIdx+length(sig)-1]'.*pi/2) + imag(sig).*sin([obj.lastIdx:obj.lastIdx+length(sig)-1]'.*pi/2);
            y=int8(round(qad.*2^7));
            obj.lastIdx=obj.lastIdx+length(sig);
        end
        
        function resetImpl(obj)
            reset(obj.pScrambler);
            reset(obj.hMod);
            reset(obj.rrc);
        end
    end
end
