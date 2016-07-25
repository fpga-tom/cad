function noise_decision = myDecision_noise(Ades,Ridx,Cidx,leng,c,d)

%   Copyright 2012 The MathWorks, Inc.

count = 0;                  % count the number of points above a threshold
num = 0;

for i = 1:leng
    if Ades(i)>2500
        count = count + 1;
    else break;
    end
end

x_axis=Ridx(1:count); % record the x-coordinate of these points
y_axis=Cidx(1:count); % record the y-coordinate of these points

a = length(unique(x_axis));
for i = 1:count
    if y_axis(i)==round(d*0.5)
        num=num+1;
    end
end
if (a==c-2) && (num==c-2)
    noise_decision=1;
else
    noise_decision=0;
end