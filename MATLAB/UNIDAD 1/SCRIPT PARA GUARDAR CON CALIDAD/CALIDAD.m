calidad= get(handles.txtcalidad,'String');
[Filename Path]=uiputfile('*.jpg','Abrir imagen');
if isequal(Filename,0)
     msgbox('Selecione ruta de archivo', 'Guardar imagen');
else  
    imwrite(a,strcat(Path,Filename), 'quality',str2double(calidad) );
    msgbox('Se guardo con exito el archivo', 'Guardar imagen');
end