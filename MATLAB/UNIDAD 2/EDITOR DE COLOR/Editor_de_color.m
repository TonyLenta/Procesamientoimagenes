%Creacion de interfaz con menus, que permiten
%agregar una imgen y colocarle el color con una
%slider que regula el color, que posteriormente
%se guardara la imagen dependiendo de las configuraciones
%colacadas en el slider

function varargout = Editor_de_color(varargin)
% EDITOR_DE_COLOR MATLAB code for Editor_de_color.fig
%      EDITOR_DE_COLOR, by itself, creates a new EDITOR_DE_COLOR or raises the existing
%      singleton*.
%
%      H = EDITOR_DE_COLOR returns the handle to a new EDITOR_DE_COLOR or the handle to
%      the existing singleton*.
%
%      EDITOR_DE_COLOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EDITOR_DE_COLOR.M with the given input arguments.
%
%      EDITOR_DE_COLOR('Property','Value',...) creates a new EDITOR_DE_COLOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Editor_de_color_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Editor_de_color_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Editor_de_color

% Last Modified by GUIDE v2.5 07-Jun-2020 22:45:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Editor_de_color_OpeningFcn, ...
                   'gui_OutputFcn',  @Editor_de_color_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Editor_de_color is made visible.
function Editor_de_color_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Editor_de_color (see VARARGIN)

% Choose default command line output for Editor_de_color
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Editor_de_color wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Editor_de_color_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function mnuopciones_Callback(hObject, eventdata, handles)
 
 
% --------------------------------------------------------------------
function mnuabrir_Callback(hObject, eventdata, handles)
global a;
[Filename Path]=uigetfile({'*.jpg';'*.png'},'Abrir imagen');
if isequal(Filename,0)
   errordlg('Error no se ha seleccionado archivo', 'Error');
else
    %Menu de opciones configuraciones
    set(handles.mnuabrir,'enable','off');   %Desabilita el boton abrir
    set(handles.mnunuevo, 'enable','on'); %Habilita el boton nuevo
    set(handles.mnuguardar, 'enable','on'); %Habilita el boton guardar
    set(handles.btnaplicarcolor, 'enable','on');
    set(handles.sliderr, 'enable','on');
    set(handles.sliderg, 'enable','on');
    set(handles.sliderb, 'enable','on');
    a=imread(strcat(Path,Filename));
    img=im2uint8(a);
    subplot(1,2,1);
    imshow(img);
    msgbox('Se abrio imagen con exito', 'Abrir imagen');
end
% --------------------------------------------------------------------
function mnunuevo_Callback(hObject, eventdata, handles)
%Pregunta si dese abrir una nueva imagen
op=questdlg('Desea abrir una nueva imagen','Nuevo','Si','No','Si');
if (op=='Si')
%Limpia imagen
cla;
set(handles.mnuabrir,'enable','on');   %Desabilita el boton abrir
set(handles.mnunuevo, 'enable','off'); %Habilita el boton nuevo
set(handles.mnuguardar, 'enable','off'); %Habilita el boton guardar
set(handles.sliderr, 'enable','off');
set(handles.sliderg, 'enable','off');
set(handles.sliderb, 'enable','off');
set(handles.btnaplicarcolor, 'enable','off');

%Obtiene los valores de slider en cero y los coloca en sus respectivas
%etiquetas
set(handles.lblnumr,'String','0');
set(handles.lblnumg,'String','0'); 
set(handles.lblnumb,'String','0'); 

set(handles.sliderr, 'Value',0.0);
set(handles.sliderg, 'Value',0.0);
set(handles.sliderb, 'Value',0.0);
%Coloca el color por defecto
set(handles.imagentest,'Color',[0.0 0.0 0.0]);
   
end

% --------------------------------------------------------------------
function mnuguardar_Callback(hObject, eventdata, handles)
[Filename Path]=uiputfile('*.jpg','Abrir imagen');%Guarda la imagen en una ruta en el pc
if isequal(Filename,0)
    errordlg('No se ha seleccionado ruta archivo, selecione uno por favor y coloque nombre al archivo', 'Error');
    %set(handles.txtcalidad,'String','-')
else  
    imwrite(a,strcat(Path,Filename), 'quality',str2double(calidad) );
    msgbox('Se guardo con exito el archivo', 'Guardar imagen');
end

% --------------------------------------------------------------------
function mnusalir_Callback(hObject, eventdata, handles)
op=questdlg('Desea salir de la aplicacion','Salir','Si','No','Si');
if (op=='Si')
    delete(handles.figure1);
end


% --- Executes on button press in btnaplicarcolor.
function btnaplicarcolor_Callback(hObject, eventdata, handles)
global a;
%A las variables r,g y b obtiene el valor del slider y almacena.
%Obtiene valores de los slider
r=get(handles.sliderr,'Value');
g=get(handles.sliderg,'Value');
b=get(handles.sliderb,'Value');
cbimg=a;
cbimg(:,:,1)=r;%Color rojo
cbimg(:,:,2)=g;%Color rojo
cbimg(:,:,3)=b;%Color rojo
img=im2uint8(cbimg);
subplot(1,2,2);
imshow (img);





% --- Executes on slider movement.
function sliderr_Callback(hObject, eventdata, handles)
%A las variables r,g y b obtiene el valor del slider y almacena.
r=get(handles.sliderr,'Value');
g=get(handles.sliderg,'Value');
b=get(handles.sliderb,'Value');
%A las etiguetas de r,g y b se le asigna el valor obtenido de los slider
set(handles.lblnumr,'String',r);
set(handles.imagentest,'Color', [r g b]);


% --- Executes during object creation, after setting all properties.
function sliderr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderg_Callback(hObject, eventdata, handles)
r=get(handles.sliderr,'Value');
g=get(handles.sliderg,'Value');
b=get(handles.sliderb,'Value');
set(handles.lblnumg,'String',g);
set(handles.imagentest,'Color', [r g b]);

% --- Executes during object creation, after setting all properties.
function sliderg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderb_Callback(hObject, eventdata, handles)
r=get(handles.sliderr,'Value');
g=get(handles.sliderg,'Value');
b=get(handles.sliderb,'Value');
set(handles.lblnumb,'String',b);
set(handles.imagentest,'Color', [r g b]);
% --- Executes during object creation, after setting all properties.
function sliderb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function lblnumr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lblnumr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function imagencolor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imagencolor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate imagencolor
