function varargout = menu(varargin)
% MENU MATLAB code for menu.fig
%      MENU, by itself, creates a new MENU or raises the existing
%      singleton*.
%
%      H = MENU returns the handle to a new MENU or the handle to
%      the existing singleton*.
%
%      MENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENU.M with the given input arguments.
%
%      MENU('Property','Value',...) creates a new MENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before menu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to menu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help menu

% Last Modified by GUIDE v2.5 26-May-2020 19:58:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @menu_OpeningFcn, ...
                   'gui_OutputFcn',  @menu_OutputFcn, ...
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


% --- Executes just before menu is made visible.
function menu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to menu (see VARARGIN)

% Choose default command line output for menu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes menu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = menu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnabrir.
function btnabrir_Callback(hObject, eventdata, handles)
global a;
[Filename Path]=uigetfile({'*.jpg';'*.png'},'Abrir imagen');
if isequal(Filename,0)
    errordlg('Error no se ha seleccionado archivo', 'Error');
else
    a=imread(strcat(Path,Filename));
    imshow(a);
    msgbox('Se abrio imagen con exito', 'Abrir imagen');
    set(handles.btnguardar, 'enable','on'); %Habilita el boton guardar
    set(handles.btnabrir,'enable','off');   %Desabilita el boton abrir
    set(handles.txtcalidad,'enable','on');  %Habilita el texto calidad
    
    %Manda informacion al grupo de propiedades
    prop=imfinfo(strcat(Path,Filename));    %Variable para leer informacion del archivo
    set(handles.txtformato,'String', prop.Format);% Agrega el formato a la etiqueta formato
    
    %Condicional para verificar si la imagen es de color
    tipo=prop.ColorType;
    if(tipo=='truecolor');
        set(handles.txttipoimagen,'string','Color');
    elseif(tipo=='GrayScale')
        set(handles.txttipoimagen,'String','Gris');
    else
        set(handles.txttipoimagen,'String','Blanco y negro');
    end
    
    
end


% --- Executes on button press in btnnuevo.
function btnnuevo_Callback(hObject, eventdata, handles)
cla;


% --- Executes on button press in btnguardar.
function btnguardar_Callback(hObject, eventdata, handles)
global a;
[Filename Path]=uiputfile('*.jpg','Abrir imagen');
if isequal(Filename,0)
    errordlg('No se ha seleccionado archivo, selecione uno por favor', 'Error');
else
    imwrite(a,strcat(Path,Filename));
    msgbox('Se guardo con exito el archivo', 'Guardar imagen');
end


% --- Executes on button press in btnabrir.
function pushbutton4_Callback(hObject, eventdata, handles)



% --- Executes on button press in btnsalir.
function btnsalir_Callback(hObject, eventdata, handles)
op=questdlg('Desea salir de la aplicacion','Salir','Si','No','Si');
if (op=='Si')
    delete(handles.figure1);
end



function txtcalidad_Callback(hObject, eventdata, handles)
% hObject    handle to txtcalidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtcalidad as text
%        str2double(get(hObject,'String')) returns contents of txtcalidad as a double


% --- Executes during object creation, after setting all properties.
function txtcalidad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtcalidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
