function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 01-May-2017 21:37:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);

path='C:\Users\melih\Desktop\IPA4\YALE\centered\';
P = dir(fullfile(path,'*.pgm'));
for x = 1 : length(P)
    handles.images{x} = imread(fullfile(path,P(x).name));
end
set(handles.listbox1,'string',{P.name});
guidata(hObject, handles);



% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
 global  index img

%handles.output = hObject;
%index = get(handles.listbox1,'value');
%imshow(handles.I{index});
%guidata(hObject, handles);

handles.output = hObject;
index = get(handles.listbox1,'value');
axes(handles.axes1);
imshow(handles.images{index});
img = handles.images{index} ;
guidata(hObject, handles);
axes(handles.axes2);
imhist(img)



% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global  img B IX C

path='C:\Users\melih\Desktop\IPA4\YALE\centered\';
P = dir(fullfile(path,'*.pgm'));
for x = 1 : length(P)
   images{x} = imread(fullfile(path,P(x).name));
end
 H1 = imhist(img);
 

for x = 1 : length(P)
H2 = imhist(images{x});
distance{x} = pdist2(H1',H2','cosine');
end

for x = 1 : length(P)
m(x)=distance{x};
end
[B,IX] = sort(m,2, 'ascend');



axes(handles.axes11);
plot(m)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global IX 

path='C:\Users\melih\Desktop\IPA4\YALE\centered\';
P = dir(fullfile(path,'*.pgm'));
for x = 1 : length(P)
   images{x} = imread(fullfile(path,P(x).name));
end

axes(handles.axes3);
imshow(images{IX(2)});
axes(handles.axes4);
imshow(images{IX(3)});
axes(handles.axes5);
imshow(images{IX(4)});
axes(handles.axes6);
imshow(images{IX(5)});
axes(handles.axes7);
imshow(images{IX(6)});



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global IX  

path='C:\Users\melih\Desktop\IPA4\YALE\centered\';
P = dir(fullfile(path,'*.pgm'));
for x = 1 : length(P)
   images{x} = imread(fullfile(path,P(x).name));
end

mflag =0;

for i = 1 : length(IX)
if(rem(IX(i),15) ==0)
    mflag=1;
    IX(i)= IX(i)-1;
end
end

a = floor((IX(1))/15);

for i = 2 : length(IX)
    f=floor((IX(i))/15);
    if(f~=a)
        if(mflag~=1)
        V1=IX(i);
        else
            IX(i)=IX(i)+1;
            V1=IX(i);
        end
    break;
    end
    
end
b =  floor((V1)/15);

for i = 2 : length(IX)
  f=floor((IX(i))/15);
     
    if(f~=a && f~=b)
       if(mflag~=1)
        V2=IX(i);
        else
            IX(i)=IX(i)+1;
            V2=IX(i);
        end
        break;
    end
end

c =  floor((V2)/15);

for i = 2 : length(IX)
   f=floor((IX(i))/15);
    if(f~=a && f~=b && f~=c)
        if(mflag~=1)
        V3=IX(i);
        else
            IX(i)=IX(i)+1;
            V3=IX(i);
        end
       break;
    
    end
     
end


axes(handles.axes8);
imshow(images{V1});
axes(handles.axes9);
imshow(images{V2});
axes(handles.axes10);
imshow(images{V3});
