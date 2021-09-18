function [theta,F]=graph_p(p)
c=299792458;
N=16;        % ������Ŀ
f=300e6;
lambda=1;     % ����
beta=-2*pi/lambda;       % ���ɿռ䲨��
d=lambda/2*(1-1/N)*0.92;       % ��Ԫ���
% d=0.5*lambda;
alpha1=-beta*d*sind(90);
theta0=linspace(-pi/3,pi/3,181);

Psi1=beta*d*sin(theta0)+alpha1;
% Psi1=beta*d*sin(theta0);
%����ֱ����
f0=[];
for i=1:N
    f0=[f0;exp(-1j*(i-1)*Psi1)];
end
f11=p*f0;
theta=rad2deg(theta0);
f1=abs(f11);
F=20*log10(f1/max(f1));
% F=real(f1);
end