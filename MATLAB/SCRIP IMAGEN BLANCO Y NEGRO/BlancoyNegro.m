%creacion de imagenes en blanco y negro
clc;
clear all; % Eliminar informacion de la pantalla.
a=zeros(750,1250); %0 = negro. Funcion zeros Imagen 750 x 1250.
imshow(a);
%a(100:200,250:350)=1;%Imagen cuadrado en blanco
%imshow(a);
%b(150:250,350:450)=1;
%imshow(b);
a=ones(1000,1000);% Imagen en color blanco Funcion ones
a(1:100,1:1000)=0;
a(901:1000,1:1000)=0;
a(1:1000,1:100)=0;
a(1:1000,901:1000)=0;
a(300:350,300:500)=0;
a(450:500,300:500)=0;
a(300:600,300:350)=0;
a(300:600,450:500)=0;


ci=600;
cf=600
for i=300:400
    a(i,ci:cf)=0;
    cf=cf+1;
end
a(400:550,520:680)=0;
a(1:1000,1:100)=0;
imshow(a);
