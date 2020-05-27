[Filename Path]=uigetfile({'*.jpg';'*.png'},'Abrir imagen');
if isequal(Filename,0)%Si no eligio archivo
    msgbox('No eligio archivo, por favor elija uno','Error');
else 
    a=imread(strcat(Path,Filename));
    figure('Name','Imagen','NumberTitle','off');
    imshow(a);
    title('Imagen 1');
    c=imfinfo(strcat(Path,Filename));
   % disp(c.Filename);
   % disp(c.Filesize);
   % disp(c.Format);
    improfile;
    
end