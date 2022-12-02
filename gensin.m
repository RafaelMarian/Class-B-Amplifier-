function [seq]= gensin(ampl,frecv,faza,ninitial,nfinal)
ninitial=0;
nfinal=50;
N=ninitial:1:nfinal;
ampl=1.5;
frecv=1/15;
faza=pi/6;

seq=ampl*sin(2*pi*frecv*N+faza);
Mean=mean(seq);
[m,loc]=min(seq);
[M,loc]=max(seq);
d=std(seq);

stem(N,seq,'LineWidth',1.5)


end