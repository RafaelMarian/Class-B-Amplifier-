clear all;
close all;
Fig=figure('Name','Laborator Grafica',...
           'Units','normalized',...
           'Position',[0.1 0.1 0.8 0.8],...
           'NumberTitle','off','color','w');
       ha = axes('units','normalized', ...
'position',[0 0 1 1]);
uistack(ha,'bottom');
 I=imread('fundal3.png');
 hi = imagesc(I);
colormap gray
set(ha,'handlevisibility','off', ...
'visible','off');
set(hi,'alphadata',.95);
                f=uimenu('Label','Functii');
           uimenu(f,'Label','Iesire','Callback','close',...
                    'Separator','on','Accelerator','Q');
                uicontrol('Style','text','FontSize',22,...
                                    'Units','normalized',...
                                    'Position',[0.3 0.8 0.4 0.065],...
                                    'background','black',...
                                    'foregroundcolor','w',...
                                    'String','Vanca Rafael-Marian');
                                uicontrol('Style','text','FontSize',16,...
                                    'Units','normalized',...
                                    'Position',[0.3 0.63 0.4 0.17],...
                                    'background','black',...
                                    'foregroundcolor','w',...
                                    'String','Student in Anul II la Universitatea Tehnica din Cluj-Napoca,Facultatea de Electronica,Telecomunicatii si Tehnologia Informatiei ,Seria A, Grupa 2121   ');