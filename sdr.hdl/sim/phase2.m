clear;
SR=5000;
f=100;
T=1*SR/f;
time=[0:1/SR:5];
Tc=round(length(time)/T);
data=repmat(randi([0 1], 1, Tc)*2-1, T ,1);
data=data(:)';
sigb=cos(2*pi*f*time(1:end-1));
sig=data.*sigb;
sig=[sig(14:end) zeros(1,13)];
sigb1=[sigb(14:end) zeros(1,13)];
freq=2*pi*f/SR
phase=0;
phi=0;
z=0;
zi=0;
zq=0;
d=[];
sig1=[];
mi=zeros(1,100);
mq=zeros(1,100);
sk=zeros(1,10);
ml=0;
for i=[1:length(time)-1]
	I=cos(phase+ml);
	Q=sin(phase+ml);
	sig1=[sig1 cos(phase+ml+pi)];
	mi=[mi(2:100) sig(i)*I];
	mq=[mq(2:100) sig(i)*Q];
	zi=sum(mi);
	zq=sum(mq);
	if mod(i-1-14,T) == 0
		sk=[sk(2:10) zi*zq];
		ml=ml-1e-5*sum(sk);
    end
	phase=phase+freq;
	while phase>=2*pi
		phase=phase-2*pi;
	end
	while phase<=-2*pi
		phase=phase+2*pi;
	end
	%printf("%d %f %f\n", i, phi, z);
	d=[d ml];
end
% plot(1:length(d), sigb1, 1:length(d), sig1);
plot(1:length(d), d);
