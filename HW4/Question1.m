function varargout = Question1(varargin)
% QUESTION1 MATLAB code for Question1.fig
%      QUESTION1, by itself, creates a new QUESTION1 or raises the existing
%      singleton*.
%
%      H = QUESTION1 returns the handle to a new QUESTION1 or the handle to
%      the existing singleton*.
%
%      QUESTION1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUESTION1.M with the given input arguments.
%
%      QUESTION1('Property','Value',...) creates a new QUESTION1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Question1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Question1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Question1

% Last Modified by GUIDE v2.5 25-Apr-2017 22:18:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Question1_OpeningFcn, ...
                   'gui_OutputFcn',  @Question1_OutputFcn, ...
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


% --- Executes just before Question1 is made visible.
function Question1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Question1 (see VARARGIN)

% Choose default command line output for Question1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Question1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Question1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global img img2 
[path, user_cancel] = imgetfile();
if user_cancel
    msgbox(sprintf('error'),'Error','Error');
    return
end

img = imread(path);
img = im2double(img);
img2= img;
axes(handles.axes1);
imshow(img);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global img3 img4 
[path, user_cancel] = imgetfile();
if user_cancel
    msgbox(sprintf('error'),'Error','Error');
    return
end

img3 = imread(path);
img3 = im2double(img3);
img4= img3;
axes(handles.axes2);
imshow(img3);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global img
axes(handles.axes3);
imhist(img)

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global img3
axes(handles.axes4);
imhist(img3)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global img img3 dist 

H1 = imhist(img);
H2 = imhist(img3);
dist = 1-(dot(H1,H2')/sqrt((dot(H1,H1')*dot(H2,H2'))));

textLabel = sprintf('Result = %f', dist);
set(handles.text1, 'String', textLabel);

