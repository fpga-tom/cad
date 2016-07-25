function myPlot(Sx,alphao,fo)

%   Copyright 2012 The MathWorks, Inc.

% Surface Plot
Sxplot=surf(alphao,fo,Sx);
set(Sxplot,'edgecolor','interp');
view(-37.5,40);
xlabel('alpha');
ylabel('f');
zlabel('Sx');