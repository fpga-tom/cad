clear;
Rsym = 1250;         % Symbol rate (symbols/second)
nSamps = 8;         % Number of samples per symbol
decim=2;
frameSize=128;
% Calculate sampling frequency in Hz
Fs = Rsym * nSamps

frames=400;
% bit generation
bbc = [+1 +1 +1 +1 +1 -1 -1 +1 +1 -1 +1 -1 +1]; % Bipolar Barker Code
ubc = ((bbc + 1) / 2)'; % Unipolar Barker Code
temp = (repmat(ubc,1,2))';
pHeader = temp(:);
% scrambler
ScramblerBase = 2;
ScramblerPolynomial = [1 1 1 0 1];
ScramblerInitialConditions = [0 0 0 0];
pScrambler = comm.Scrambler(ScramblerBase, ScramblerPolynomial, ScramblerInitialConditions, 'ResetInputPort', true);
% read input data
fid=fopen('data.txt', 'r');
txdata=fread(fid,2000000,'uint8');
txdata=de2bi(txdata,8, 'left-msb');
txdata=txdata';
txdata=txdata(:);
frames=floor(length(txdata)/frameSize);
txdata=txdata(1:frames*frameSize);
fclose(fid);
txdata=reshape(txdata, frameSize, frames);

% modulation
hMod=comm.QPSKModulator('BitInput', true);
data=[];
for i=1:frames
    scrData=step(pScrambler, txdata(:,i),1);
    data=[data; step(hMod, [pHeader; scrData])];
end
% pulse shaping
rrc=comm.RaisedCosineTransmitFilter('OutputSamplesPerSymbol', nSamps);
sig=step(rrc, data);
% transmitting
qad=real(sig).*cos([0:length(sig)-1]'.*pi/2) + imag(sig).*sin([0:length(sig)-1]'.*pi/2);
fid=fopen('qpsk.bin','w');
fwrite(fid, round(qad.*2^7), 'int8');
fclose(fid);