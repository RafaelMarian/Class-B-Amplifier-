function x = Sinusoida(A,f,fi,nl,nu)
A=7;
f=1/17;
fi=pi/7;
nl=0;
nu=90;
N=nl:1:nu;
x=A*sin(2*pi*f*N+fi);
stem(N,x,'LineWidth',1.5);
grid;

end