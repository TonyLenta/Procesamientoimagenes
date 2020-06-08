[Filename Path]=uigetfile('*.jpg','Abrir Imagen');
if isequal(Filename, 0);
errodlg('Debe seleccionar una imagen', 'Error');
else
    a=imread(strcat(Path, Filename));
    figure('Name','Imagen a Color');
    imshow(a);
    b=rgb2gray(a);
    figure('Name','Imagen a escala de grises');
    imshow(b);
    umbral=graythresh(a);
    c=im2bw(a,umbral);
    figure('Name','Imagen a Blanco y negro');
    imshow(c);
    j=checkerboard(20,2,3);
    imshow(j);
end