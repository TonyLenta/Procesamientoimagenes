function varargout = MENUIMAGEN(varargin)
% MENUIMAGEN MATLAB code for MENUIMAGEN.fig
%      MENUIMAGEN, by itself, creates a new MENUIMAGEN or raises the existing
%      singleton*.
%
%      H = MENUIMAGEN returns the handle to a new MENUIMAGEN or the handle to
%      the existing singleton*.
%
%      MENUIMAGEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENUIMAGEN.M with the given input arguments.
%
%      MENUIMAGEN('Property','Value',...) creates a new MENUIMAGEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MENUIMAGEN_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MENUIMAGEN_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MENUIMAGEN

% Last Modified by GUIDE v2.5 05-Jun-2020 20:32:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MENUIMAGEN_OpeningFcn, ...
                   'gui_OutputFcn',  @MENUIMAGEN_OutputFcn, ...
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


% --- Executes just before MENUIMAGEN is made visible.
function MENUIMAGEN_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MENUIMAGEN (see VARARGIN)

% Choose default command line output for MENUIMAGEN
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MENUIMAGEN wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MENUIMAGEN_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function mnuopciones_Callback(hObject, eventdata, handles)
% hObject    handle to mnuopciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnusalir_Callback(hObject, eventdata, handles)
% hObject    handle to mnusalir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnuabrir_Callback(hObject, eventdata, handles)
[Filename Path]= uigetfile('*.jpg','Abrir imagen');
if isequal(Filename, 0)
    msgbox('No se selecciono imagen');
else
    a=imread(strcat(Path,Filename));
    imshow(a);
    set(handles.mnnuevo,'enable','on');
end