clc;
clear all;

%Marco
a=ones(1000,1000);
%a(1:100,1:1000)=0; %Arriba
%a(901:1000,1:1000)=0; %Abajo
%a(1:1000,1:100)=0; %Izquierda
%a(1:1000,901:1000)=0; %Derecha
%Marco

%Uno
a(300:600,100:150)=0;
%Uno

%Nueve
a(300:350,300:450)=0; %A de Arriba
a(450:500,300:450)=0; %A de Abajo
a(300:500,250:300)=0; %A de Izquierda
a(300:600,400:450)=0; %A de Derecha
%Nueve

%Nueve
a(300:350,500:700)=0; %A de Arriba
a(450:500,500:700)=0; %A de Abajo
a(300:500,500:550)=0; %A de Izquierda
a(300:600,650:700)=0; %A de Derecha
%Nueve

%Seis
a(300:600,750:800)=0;
a(400:450,800:950)=0; %Arriba
a(550:600,800:900)=0; %Abajo
a(450:600,900:950)=0; %A de Derecha


%Seis
imshow(a);
