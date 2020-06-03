%Creacion de una imagen a color de 500 x 750
%Intensidad de color 8 bit (0-255).  2 elevado 8 = 256
clc;
clear all;
%Matriz 
a(1:500,1:750,1)=200/255;%Color rojo
%a(1:500,1:750,2)=0/255;%Color verde
%a(1:500,1:750,3)=0/255;%Color azul
%Transformar matriz a en imagen color en variable img
img=im2uint8(a);
imshow(img);