function varargout = tiro_parabolico_con_resorte(varargin)
% TIRO_PARABOLICO_CON_RESORTE MATLAB code for tiro_parabolico_con_resorte.fig
%      TIRO_PARABOLICO_CON_RESORTE, by itself, creates a new TIRO_PARABOLICO_CON_RESORTE or raises the existing
%      singleton*.
%
%      H = TIRO_PARABOLICO_CON_RESORTE returns the handle to a new TIRO_PARABOLICO_CON_RESORTE or the handle to
%      the existing singleton*.
%
%      TIRO_PARABOLICO_CON_RESORTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIRO_PARABOLICO_CON_RESORTE.M with the given input arguments.
%
%      TIRO_PARABOLICO_CON_RESORTE('Property','Value',...) creates a new TIRO_PARABOLICO_CON_RESORTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tiro_parabolico_con_resorte_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tiro_parabolico_con_resorte_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tiro_parabolico_con_resorte

% Last Modified by GUIDE v2.5 19-Feb-2020 14:43:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tiro_parabolico_con_resorte_OpeningFcn, ...
                   'gui_OutputFcn',  @tiro_parabolico_con_resorte_OutputFcn, ...
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


% --- Executes just before tiro_parabolico_con_resorte is made visible.
function tiro_parabolico_con_resorte_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tiro_parabolico_con_resorte (see VARARGIN)

% Choose default command line output for tiro_parabolico_con_resorte
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tiro_parabolico_con_resorte wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tiro_parabolico_con_resorte_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtFuerza_Callback(hObject, eventdata, handles)
% hObject    handle to txtFuerza (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFuerza as text
%        str2double(get(hObject,'String')) returns contents of txtFuerza as a double


% --- Executes during object creation, after setting all properties.
function txtFuerza_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFuerza (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtAngle_Callback(hObject, eventdata, handles)
% hObject    handle to txtAngle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtAngle as text
%        str2double(get(hObject,'String')) returns contents of txtAngle as a double


% --- Executes during object creation, after setting all properties.
function txtAngle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtAngle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxDistance_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxDistance as text
%        str2double(get(hObject,'String')) returns contents of txtMaxDistance as a double


% --- Executes during object creation, after setting all properties.
function txtMaxDistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxHeight_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxHeight as text
%        str2double(get(hObject,'String')) returns contents of txtMaxHeight as a double


% --- Executes during object creation, after setting all properties.
function txtMaxHeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTotalTime_Callback(hObject, eventdata, handles)
% hObject    handle to txtTotalTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTotalTime as text
%        str2double(get(hObject,'String')) returns contents of txtTotalTime as a double


% --- Executes during object creation, after setting all properties.
function txtTotalTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTotalTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnSimular.
function btnSimular_Callback(hObject, eventdata, handles)
% hObject    handle to btnSimular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc

t = 0:0.01:50;
n = str2num( get(handles.txtDistanceDiana, 'String') );
F = str2num( get(handles.txtFuerza,'String') );
o = str2num( get(handles.txtAngle, 'String') );
m = str2num( get(handles.txtMasa, 'String') );
x = str2num( get(handles.txtDResorte, 'String') );
g = 9.8;

% Validacion de los valores de entrada
VerifyContinue = ValidationFunction( F, o, m, x, handles );

if( VerifyContinue == 1 )
    for i=0:5
        img_rotated = rotate_img(i, o);
        imshow(img_rotated, 'Parent', handles.cannon);
        pause(0.01)
    end

    for i=5:-1:0
        img_rotated = rotate_img(i, o);
        imshow(img_rotated, 'Parent', handles.cannon);
        pause(0.0001)
    end

    FunctionGraph(t, n, F, o, m, x, g, handles);
else
    uiwait(msgbox('Siga las indicaciones para poder continuar.','¡Atencion!','modal'));
end




% --- Executes on key press with focus on btnSimular and none of its controls.
function btnSimular_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to btnSimular (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
% Codigo que realiza la silumnacion del tiro parabolico


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over btnSimular.
function btnSimular_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to btnSimular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function txtK_Callback(hObject, eventdata, handles)
% hObject    handle to txtK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtK as text
%        str2double(get(hObject,'String')) returns contents of txtK as a double


% --- Executes during object creation, after setting all properties.
function txtK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtVelocidadInicial_Callback(hObject, eventdata, handles)
% hObject    handle to txtVelocidadInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtVelocidadInicial as text
%        str2double(get(hObject,'String')) returns contents of txtVelocidadInicial as a double


% --- Executes during object creation, after setting all properties.
function txtVelocidadInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtVelocidadInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMasa_Callback(hObject, eventdata, handles)
% hObject    handle to txtMasa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMasa as text
%        str2double(get(hObject,'String')) returns contents of txtMasa as a double


% --- Executes during object creation, after setting all properties.
function txtMasa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMasa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtDResorte_Callback(hObject, eventdata, handles)
% hObject    handle to txtDResorte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDResorte as text
%        str2double(get(hObject,'String')) returns contents of txtDResorte as a double


% --- Executes during object creation, after setting all properties.
function txtDResorte_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDResorte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Definimos posicion del blanco de acuerdo a la distancia maxima obtenida
clear all;
clc
pause(1)




function txtVi2_Callback(hObject, eventdata, handles)
% hObject    handle to txtVi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtVi2 as text
%        str2double(get(hObject,'String')) returns contents of txtVi2 as a double


% --- Executes during object creation, after setting all properties.
function txtVi2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtVi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
% hObject    handle to btnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla
clear all


% --- Executes during object creation, after setting all properties.
function graph2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to graph2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate graph2


function txtDistanceDiana_Callback(hObject, eventdata, handles)
% hObject    handle to txtDistanceDiana (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDistanceDiana as text
%        str2double(get(hObject,'String')) returns contents of txtDistanceDiana as a double


% --- Executes during object creation, after setting all properties.
function txtDistanceDiana_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDistanceDiana (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnDefinirBlanco.
function btnDefinirBlanco_Callback(hObject, eventdata, handles)
% hObject    handle to btnDefinirBlanco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Definimos posicion del blanco
n = str2num( get(handles.txtDistanceDiana, 'String') );

if( n < 0 || n > 10 )
    uiwait(msgbox('EL blanco no puede estar en una distancia negativa o estar a mas de 10 mestros del origen de donde sale el proyectil. Intente definir un blanco donde 0 < n <= 10.','¡Cuidado!','modal'));
    set(handles.txtDistanceDiana, 'String', num2str(5) );
    n = 5;
end

n = round(n*0.85);
img = imread('images/target.jpg');
[rows1, cols1, c1] = size(img);
img = img/255;

blank = ones(rows1, cols1*n, 3);
[rows2, cols2, c2] = size(blank);

nb = blank;

nb( 1:end, ( (n-1)*cols1+1 ):end, 1:end ) = img;
imshow(nb, 'Parent', handles.graph2)

% -----------------------------------------------------------------
% % Leemos la imagen del resorte, la giramos y despues la mostramos
theta = str2num( get(handles.txtAngle, 'String') );
img_rotated = rotate_img(0, theta);
imshow(img_rotated, 'Parent', handles.cannon);

% -----------------------------------------------------------------
% --- Executes during object creation, after setting all properties.
function graph1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to graph1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate graph1


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);
clear all, close all


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function cannon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cannon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




% Hint: place code in OpeningFcn to populate cannon


% --- Executes during object creation, after setting all properties.
function btnSimular_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btnSimular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
