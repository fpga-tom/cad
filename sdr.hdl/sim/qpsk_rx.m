function y=qpsk_rx(frame)
    persistent qpskRx;
    if isempty(qpskRx)
        qpskRx=QPSKRx;
    end
    y=step(qpskRx, frame);
end