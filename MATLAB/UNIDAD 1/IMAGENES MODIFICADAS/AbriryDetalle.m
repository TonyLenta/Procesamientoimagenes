[Filename Path]=uigetfile({'*.jpg';'*.png'},'Abrir imagen');
if isequal(Filename,0)%Si no eligio archivo
    msgbox('No eligio archivo, por favor elija uno','Error');
else 
    a=imread(strcat(Path,Filename));
    figure('Name','Imagen','NumberTitle','off');
    imshow(a);
    title('Imagen 1');
    c=imfinfo(strcat(Path,Filename));
   % disp(c.Filename);  %Nombre de archivo
   % disp(c.FileSize);  %Tamaño de archivo
   % disp(c.Format);    %Formato de archivo
    improfile;
    
end