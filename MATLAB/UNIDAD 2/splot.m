%Creacion de una imagen a color de 500 x 750
%Intensidad de color 8 bit (0-255).  2 elevado 8 = 256
clc;
clear all;
%Matriz 
%Color Amarillo
a(1:50,1:50,1)=255/255;%Color rojo
a(1:50,1:50,2)=255/255;%Color verde
a(1:50,1:50,3)=0/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(a);
subplot(1,3,1);%subplot(filas,columnas,posicion)
imshow(img);
title('Imagen 1');
%Color azul
b(1:50,1:50,1)=0/255;%Color rojo
b(1:50,1:50,2)=0/255;%Color verde
b(1:50,1:50,3)=255/255;%Color azul
img=im2uint8(b);
subplot(1,3,2);%subplot(filas,columnas,posicion)
imshow(img);
title('Imagen 2');
%Color rojo
c(1:50,1:50,1)=255/255;%Color rojo
c(1:50,1:50,2)=0/255;%Color verde
c(1:50,1:50,3)=0/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(1,3,3);%subplot(filas,columnas,posicion)
imshow(img);
title('Imagen 3');