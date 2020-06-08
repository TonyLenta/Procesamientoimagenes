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
subplot(4,4,1);%subplot(filas,columnas,posicion)
imshow(img);
title('Amarillo');
%Color azul
b(1:50,1:50,1)=0/255;%Color rojo
b(1:50,1:50,2)=0/255;%Color verde
b(1:50,1:50,3)=255/255;%Color azul
img=im2uint8(b);
subplot(4,4,2);%subplot(filas,columnas,posicion)
imshow(img);
title('Azul');
%Color rojo
c(1:50,1:50,1)=255/255;%Color rojo
c(1:50,1:50,2)=0/255;%Color verde
c(1:50,1:50,3)=0/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,3);%subplot(filas,columnas,posicion)
imshow(img);
title('Rojo');
%Color rojo
c(1:50,1:50,1)=0/255;%Color rojo
c(1:50,1:50,2)=255/255;%Color verde
c(1:50,1:50,3)=0/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,4);%subplot(filas,columnas,posicion)
imshow(img);
title('Verde');%Color rojo
c(1:50,1:50,1)=255/255;%Color rojo
c(1:50,1:50,2)=255/255;%Color verde
c(1:50,1:50,3)=255/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,5);%subplot(filas,columnas,posicion)
imshow(img);
title('Blanco');%Color rojo
c(1:50,1:50,1)=0/255;%Color rojo
c(1:50,1:50,2)=0/255;%Color verde
c(1:50,1:50,3)=0/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,6);%subplot(filas,columnas,posicion)
imshow(img);
title('Negro');%Color rojo
c(1:50,1:50,1)=205/255;%Color rojo
c(1:50,1:50,2)=100/255;%Color verde
c(1:50,1:50,3)=000/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,7);%subplot(filas,columnas,posicion)
imshow(img);
title('Cafe');%Color rojo
c(1:50,1:50,1)=255/255;%Color rojo
c(1:50,1:50,2)=128/255;%Color verde
c(1:50,1:50,3)=0/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,8);%subplot(filas,columnas,posicion)
imshow(img);
title('Naranja');%Color rojo
c(1:50,1:50,1)=87/255;%Color rojo
c(1:50,1:50,2)=35/255;%Color verde
c(1:50,1:50,3)=100/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,9);%subplot(filas,columnas,posicion)
imshow(img);
title('Morado');%Color rojo
c(1:50,1:50,1)=155/255;%Color rojo
c(1:50,1:50,2)=155/255;%Color verde
c(1:50,1:50,3)=155/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,10);%subplot(filas,columnas,posicion)
imshow(img);
title('Gris');%Color rojo
c(1:50,1:50,1)=1;%Color rojo
c(1:50,1:50,2)=0.4;%Color verde
c(1:50,1:50,3)=0.6;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,11);%subplot(filas,columnas,posicion)
imshow(img);
title('Rosado');%Color rojo
c(1:50,1:50,1)=255/255;%Color rojo
c(1:50,1:50,2)=0/255;%Color verde
c(1:50,1:50,3)=255/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,12);%subplot(filas,columnas,posicion)
imshow(img);
title('Magento');%Color rojo
c(1:50,1:50,1)=100/255;%Color rojo
c(1:50,1:50,2)=155/255;%Color verde
c(1:50,1:50,3)=255/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,13);%subplot(filas,columnas,posicion)
imshow(img);
title('Celeste');%Color rojo
c(1:50,1:50,1)=175/255;%Color rojo
c(1:50,1:50,2)=0/255;%Color verde
c(1:50,1:50,3)=0/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,14);%subplot(filas,columnas,posicion)
imshow(img);
title('Marron');%Color rojo
c(1:50,1:50,1)=87/255;%Color rojo
c(1:50,1:50,2)=35/255;%Color verde
c(1:50,1:50,3)=50/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,15);%subplot(filas,columnas,posicion)
imshow(img);
title('Violeta');%Color rojo
c(1:50,1:50,1)=155/255;%Color rojo
c(1:50,1:50,2)=200/255;%Color verde
c(1:50,1:50,3)=10/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(c);
subplot(4,4,16);%subplot(filas,columnas,posicion)
imshow(img);
title('Olivo');