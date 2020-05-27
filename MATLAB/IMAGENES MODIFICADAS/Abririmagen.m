clear all; %Elimina el contenido de la variables.
clc;  %Elimina la informacion de la pantalla
a=imread('C:\Users\tony_\Pictures\HondaCrf.jpg');
b=a(10:150,20:200,1:3);

figure('Name','Foto de moto','NumberTitle','off'); %Cambia el nombre de la pestaña
imshow(a);
title('Imagen completa','Color','red','FontSize',10,'FontWeight','bold','FontName','TimesNewRoman');
%title('Imagen','Color','cyan');

figure('Name','Foto de moto','NumberTitle','off'); %Cambia el nombre de la pestaña
imshow(b);
title('Imagen recortada','Color','red','FontSize',10,'FontWeight','bold','FontName','TimesNewRoman');
