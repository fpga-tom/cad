function y=qpsk_tx(frame)
    persistent qpskTx;
    if isempty(qpskTx)
        qpskTx=QPSKTx;
    end
    y=step(qpskTx, frame);
end