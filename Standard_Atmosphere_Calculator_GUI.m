function varargout = Standard_Atmosphere_Calculator_GUI(varargin)
% STANDARD_ATMOSPHERE_CALCULATOR_GUI MATLAB code for Standard_Atmosphere_Calculator_GUI.fig
%      STANDARD_ATMOSPHERE_CALCULATOR_GUI, by itself, creates a new STANDARD_ATMOSPHERE_CALCULATOR_GUI or raises the existing
%      singleton*.
%
%      H = STANDARD_ATMOSPHERE_CALCULATOR_GUI returns the handle to a new STANDARD_ATMOSPHERE_CALCULATOR_GUI or the handle to
%      the existing singleton*.
%
%      STANDARD_ATMOSPHERE_CALCULATOR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STANDARD_ATMOSPHERE_CALCULATOR_GUI.M with the given input arguments.
%
%      STANDARD_ATMOSPHERE_CALCULATOR_GUI('Property','Value',...) creates a new STANDARD_ATMOSPHERE_CALCULATOR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Standard_Atmosphere_Calculator_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Standard_Atmosphere_Calculator_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Standard_Atmosphere_Calculator_GUI

% Last Modified by GUIDE v2.5 11-Jun-2018 15:31:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Standard_Atmosphere_Calculator_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Standard_Atmosphere_Calculator_GUI_OutputFcn, ...
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


% --- Executes just before Standard_Atmosphere_Calculator_GUI is made visible.
function Standard_Atmosphere_Calculator_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Standard_Atmosphere_Calculator_GUI (see VARARGIN)

% Choose default command line output for Standard_Atmosphere_Calculator_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Standard_Atmosphere_Calculator_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Standard_Atmosphere_Calculator_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function h1_Callback(hObject, eventdata, handles)
% hObject    handle to h1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h1 as text
%        str2double(get(hObject,'String')) returns contents of h1 as a double
input=str2num(get(hObject,'String'));

if(isempty(input))
    set(hObject,'String','0')
end

% --- Executes during object creation, after setting all properties.
function h1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temperature_editText_Callback(hObject, eventdata, handles)
% hObject    handle to temperature_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temperature_editText as text
%        str2double(get(hObject,'String')) returns contents of temperature_editText as a double


% --- Executes during object creation, after setting all properties.
function temperature_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temperature_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pressure_editText_Callback(hObject, eventdata, handles)
% hObject    handle to pressure_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pressure_editText as text
%        str2double(get(hObject,'String')) returns contents of pressure_editText as a double


% --- Executes during object creation, after setting all properties.
function pressure_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pressure_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function density_editText_Callback(hObject, eventdata, handles)
% hObject    handle to density_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of density_editText as text
%        str2double(get(hObject,'String')) returns contents of density_editText as a double


% --- Executes during object creation, after setting all properties.
function density_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to density_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sound_editText_Callback(hObject, eventdata, handles)
% hObject    handle to sound_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sound_editText as text
%        str2double(get(hObject,'String')) returns contents of sound_editText as a double


% --- Executes during object creation, after setting all properties.
function sound_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sound_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dyn_viscosity_editText_Callback(hObject, eventdata, handles)
% hObject    handle to dyn_viscosity_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dyn_viscosity_editText as text
%        str2double(get(hObject,'String')) returns contents of dyn_viscosity_editText as a double


% --- Executes during object creation, after setting all properties.
function dyn_viscosity_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dyn_viscosity_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kine_viscosity_editText_Callback(hObject, eventdata, handles)
% hObject    handle to kine_viscosity_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kine_viscosity_editText as text
%        str2double(get(hObject,'String')) returns contents of kine_viscosity_editText as a double


% --- Executes during object creation, after setting all properties.
function kine_viscosity_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kine_viscosity_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
P0=101325;                      % Pressure at Sea Level (Pascal)
T0=288.15;                      % Temperature at Sea Level (Kelvin)
rho0=1.225;                     % Density at Sea Level (kg/m^3)
h0=0;                           % Altitude at Sea Level (meter)
g=9.8065;                       % Gravity of Eart m/s^2
R=287;                          % Gas constant
gama=1.4 ;                      % Ratio of specific heat constants
mu0=1.784*10^-5 ;               % Dynamic Viscosity at Sea Level (k/ms)

h1=str2num(get(handles.h1,'String'));

if (h1<=11000)
a=-0.0065;                                  % Temperature gradient
T1=T0+a*(h1-h0)                             % Temperature change with respective to altitude
P1=P0*((T1/T0)^(-g/(R*a)))                  % Pressure change with respective to altitude
rho1=rho0*((T1/T0)^((-g/(R*a))-1))          % Density change with respective to altitude
SoS1= sqrt(gama*R*T1)                       % DSpeed 0f Sound change with respective to altitude
mu1=mu0*((T1/T0)^0.75)                      % Dynamic Viscosity change with respective to altitude
nu1=mu1/rho1                                % Kinematic Viscosity change with respective to altitude
end

if (h1>11000)&&(h1<=20000)
    d_h=11000;
    a_h=-0.0065;                                 % Temperature gradient
    T_h=T0+a_h*(d_h-h0);                         % Temperature change with respective to altitude
    P_h=P0*((T_h/T0)^(-g/(R*a_h)));              % Pressure change with respective to altitude
    rho_h=rho0*((T_h/T0)^((-g/(R*a_h))-1));      % Density change with respective to altitude
    
    T1=T_h                                      % Temperature change with respective to altitude
    P1=P_h*(exp((-g/(R*T_h))*(h1-11000)))       % Pressure change with respective to altitude when there is no temperature change
    rho1=rho_h*(exp((-g/(R*T_h))*(h1-11000)))   % Density change with respective to altitude when there is no temperature change
    SoS1= sqrt(gama*R*T1)                        % Speed 0f Sound change with respective to altitude
    mu1=mu0*((T1/T0)^0.75)                       % Dynamic Viscosity change with respective to altitude
    nu1=mu1/rho1                                 % Kinematic Viscosity change with respective to altitude
end

if (h1>20000)&&(h1<=32000)
    d_h11=11000;
    a_h11=-0.0065;                                        % Temperature gradient
    T_h11=T0+a_h11*(d_h11-h0);                            % Temperature change with respective to altitude
    P_h11=P0*((T_h11/T0)^(-g/(R*a_h11)));                 % Pressure change with respective to altitude
    rho_h11=rho0*((T_h11/T0)^((-g/(R*a_h11))-1));         % Density change with respective to altitude
    
    T_h20=T_h11;                                          % Temperature change with respective to altitude
    P_h20=P_h11*(exp((-g/(R*T_h20))*(20000-11000)));      % Pressure change with respective to altitude when there is no temperature change
    rho_h20=rho_h11*(exp((-g/(R*T_h20))*(20000-11000)));  % Density change with respective to altitude when there is no temperature change
   
    a=0.001;
    T1=T_h11+(a*(h1-20000))
    P1=P_h20*((T1/T_h11)^(-g/(R*a)))
     rho1=rho_h20*((T1/T_h20)^((-g/(R*a))-1))             % Density change with respective to altitude
            
    SoS1= sqrt(gama*R*T1)                                 % Speed 0f Sound change with respective to altitude
    mu1=mu0*((T1/T0)^0.75)                                % Dynamic Viscosity change with respective to altitude
    nu1=mu1/rho1                                          % Kinematic Viscosity change with respective to altitude
end

if (h1>32000)&&(h1<=47000)
    
    d_h11=11000;
    a_h11=-0.0065;                                        % Temperature gradient
    T_h11=T0+a_h11*(d_h11-h0);                            % Temperature change with respective to altitude
    P_h11=P0*((T_h11/T0)^(-g/(R*a_h11)));                 % Pressure change with respective to altitude
    rho_h11=rho0*((T_h11/T0)^((-g/(R*a_h11))-1));         % Density change with respective to altitude
    
    T_h20=T_h11;                                          % Temperature change with respective to altitude
    P_h20=P_h11*(exp((-g/(R*T_h20))*(20000-11000)));      % Pressure change with respective to altitude when there is no temperature change
    rho_h20=rho_h11*(exp((-g/(R*T_h20))*(20000-11000)));  % Density change with respective to altitude when there is no temperature change
   
    a_h32=0.001;
    T_h32=T_h11+(a_h32*(32000-20000));
    P_h32=P_h20*((T_h32/ T_h20)^(-g/(R*a_h32)))
    rho_h32=rho_h20*((T_h32/T_h20)^((-g/(R*a_h32))-1));   % Density change with respective to altitude
            
    a=0.0028;                                             % Temperature gradient
    T1=T_h32+a*(h1-32000)                                % Temperature change with respective to altitude
    P1=P_h32*((T1/T_h32)^(-g/(R*a)))                     % Pressure change with respective to altitude
    rho1=rho_h32*((T1/T_h32)^((-g/(R*a))-1))             % Density change with respective to altitude

    
    SoS1= sqrt(gama*R*T1)                                 % Speed 0f Sound change with respective to altitude
    mu1=mu0*((T1/T0)^0.75)                                % Dynamic Viscosity change with respective to altitude
    nu1=mu1/rho1                                          % Kinematic Viscosity change with respective to altitude
end


T=num2str(T1);
P=num2str(P1);
rho=num2str(rho1);
SoS=num2str(SoS1);
mu=num2str(mu1);
nu=num2str(nu1);

set(handles.temperature_editText,'String',T)
set(handles.pressure_editText,'String',P)
set(handles.density_editText,'String',rho)
set(handles.sound_editText,'String',SoS)
set(handles.dyn_viscosity_editText,'String',mu)
set(handles.kine_viscosity_editText,'String',nu)
