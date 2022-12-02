function semnal2d(f, A)
T = 1 / f;
VBE=0.7;
 t = -0.1:1/(f*100) : 0.1;
 vi=A*sin(2*pi*f*t);
 vo=A*sin(2*pi*f*t);
 for i=1:length(t)
 if vo(i)<-VBE
 vo(i)=vi(i)-VBE;
 elseif vi(i)>VBE
     vo(i)=vi(i)+VBE;
 else
     vo(i)=0;

 end
 end
subplot('Position',[0.6 0.6 0.3 0.2]);
plot(t,vi,'b',t,vo,'r');
hold on;
grid on;
xlabel('Timp[s]')
ylabel('Amplitudine[V]');
title('Tensiunea de intrare-iesire 2D');
ax=gca;
ax.TitleHorizontalAlignment = 'center';
legend('vi','vo');

Bs=uicontrol('Style','slide',...
 'Units','normalized',...
 'Position',[0.7 0.83 .1 .02],...
 'Min',0,'Max',100,'Value',f,...
 'Callback','f=get(gco,''value'');close all;amplificator(R,A,f,E,Ptot,VBE,tip)') ;
uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.67 0.83 0.03 0.02],...
 'backgroundcolor','k',...
 'foregroundcolor','w',...
 'String',num2str(get(Bs,'Min')))
uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.8 0.83 0.03 0.02],...
 'backgroundcolor','k',...
 'foregroundcolor','w',...
 'String',num2str(get(Bs,'Max')));

end

