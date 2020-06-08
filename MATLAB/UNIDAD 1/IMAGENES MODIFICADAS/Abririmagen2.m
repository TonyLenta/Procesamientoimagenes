[Filename Path]=uigetfile({'*.jpg';'*.png'},'Abrir imagen');
if isequal(Filename,0)%Si no eligio archivo
    msgbox('No eligio archivo, por favor elija uno','Error');
else 
    a=imread(strcat(Path,Filename));
    figure('Name','Imagen','NumberTitle','off');
    imshow(a);
    title('Imagen 1');
    b=a(10:100,200:100,1:3);
    figure('Name','Imagen','NumberTitle','off');
    imshow(b);
    title('Imagen 2');
    [File Path]=uiputfile({'*.jpg';'*.png'},'Guardar Imagen');
    if isequal(Filename,0)
        msgbox('No selecciono un archivo', 'Error');
    else 
        imwrite(a,strcat(Path, Filename), 'quality', 5);
        msgbox('Se guardo con exito','Guardado');
    end
end