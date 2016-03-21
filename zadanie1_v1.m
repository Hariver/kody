function varargout = zadanie1_v1(varargin)
% ZADANIE1_V1 MATLAB code for zadanie1_v1.fig
%      ZADANIE1_V1, by itself, creates a new ZADANIE1_V1 or raises the existing
%      singleton*.
%
%      H = ZADANIE1_V1 returns the handle to a new ZADANIE1_V1 or the handle to
%      the existing singleton*.
%
%      ZADANIE1_V1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ZADANIE1_V1.M with the given input arguments.
%
%      ZADANIE1_V1('Property','Value',...) creates a new ZADANIE1_V1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before zadanie1_v1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to zadanie1_v1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help zadanie1_v1

% Last Modified by GUIDE v2.5 20-Mar-2016 21:29:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @zadanie1_v1_OpeningFcn, ...
                   'gui_OutputFcn',  @zadanie1_v1_OutputFcn, ...
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


% --- Executes just before zadanie1_v1 is made visible.
function zadanie1_v1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to zadanie1_v1 (see VARARGIN)

%Warunki pocz�tkowe
if get(handles.radiobutton_iteracje, 'Value')
    set(handles.edit7, 'enable', 'on');
    set(handles.edit9, 'enable', 'off');
end
if get(handles.radiobutton_dokladnosc, 'Value')
    set(handles.edit7, 'enable', 'off');
    set(handles.edit9, 'enable', 'on');
end

set(handles.text_errors, 'enable', 'off');

title('Wykres przedstawiaj�cy wprowadzon� funkcj�.');
xlabel('Warto�ci osi OX'); % x-axis label
ylabel('Warto�ci osi OY'); % y-axis label
grid on;
grid minor;
hold on;

%Ustawienia tabeli
cnames = {'Lewy Kraniec', 'Prawy Kraniec'};
set(handles.uitable2, 'RowName', cnames);

% Choose default command line output for zadanie1_v1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes zadanie1_v1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = zadanie1_v1_OutputFcn(hObject, eventdata, handles) 
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


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_wzor_Callback(hObject, eventdata, handles)
% hObject    handle to edit_wzor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit_wzor as text
%        str2double(get(hObject,'String')) returns contents of edit_wzor as a double


% --- Executes during object creation, after setting all properties.
function edit_wzor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_wzor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_lkraniec_Callback(hObject, eventdata, handles)
% hObject    handle to edit_lkraniec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_lkraniec as text
%        str2double(get(hObject,'String')) returns contents of edit_lkraniec as a double


% --- Executes during object creation, after setting all properties.
function edit_lkraniec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_lkraniec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_pkraniec_Callback(hObject, eventdata, handles)
% hObject    handle to edit_pkraniec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_pkraniec as text
%        str2double(get(hObject,'String')) returns contents of edit_pkraniec as a double


% --- Executes during object creation, after setting all properties.
function edit_pkraniec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_pkraniec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%pobieranie danych z "EditText"
wzor_string = get(handles.edit_wzor,'String');
wzor = inline(wzor_string,'x');
a = str2double(get(handles.edit_lkraniec, 'String'));
b = str2double(get(handles.edit_pkraniec, 'String'));
x = (a-1):((b-a)/1000):(b+1);
if get(handles.radiobutton_iteracje, 'Value')
    step = str2double(get(handles.edit7, 'String'));
    acu = 0;
elseif get(handles.radiobutton_dokladnosc, 'Value')
    step = 0;
    acu = str2double(get(handles.edit9, 'String'));
end

%B�edy wprowadzenia
if a >= b
    set(handles.text_errors, 'Enable', 'on');
    set(handles.text_errors, 'HorizontalAlignment', 'left');
    set(handles.text_errors, 'String', 'Podano b��dny przedzia�.');
    return;
elseif step < 0
    set(handles.text_errors, 'Enable', 'on');
    set(handles.text_errors, 'HorizontalAlignment', 'left');
    set(handles.text_errors, 'String', 'Podano b��dny krok iteracji.');
    return;
elseif acu > (b - a)
    set(handles.text_errors, 'Enable', 'on');
    set(handles.text_errors, 'HorizontalAlignment', 'left');
    set(handles.text_errors, 'String', 'Podano b��dn� dok�adno��.');
    return;
elseif isnan(a) || isnan(b) || isnan(step) || isnan(acu)
    set(handles.text_errors, 'Enable', 'on');
    set(handles.text_errors, 'HorizontalAlignment', 'left');
    set(handles.text_errors, 'String', 'Wprowadzono b��dn� warto��.');
    return;
end

%Metody optymalizacji
if get(handles.radiobutton_bisekcja, 'Value')
    [a_finish, b_finish, y_step, x_step, x_left, x_right]=bisection(wzor, a, b, acu, step);
elseif get(handles.radiobutton_zloty_podzial, 'Value')
    [a_finish, b_finish, y_step, x_step, x_left, x_right]=golden_ratio(wzor, a, b, acu, step);
end



%Informacja(wynik) na temat przedzia�u:
set(handles.text_errors, 'Enable', 'on');
set(handles.text_errors, 'HorizontalAlignment', 'left');
a_string = num2str(a_finish);
b_string = num2str(b_finish);
info_1 = 'Lewy kraniec:';
info_2 = 'Prawy kraniec:';
info = [info_1 char(10) a_string char(10) info_2 char(10) b_string];
set(handles.text_errors, 'String', info);


%Rysowanie wykresu
y = eval(wzor_string);
w_temp = zeros(4,4);
w_temp(:,1) = plot(x,y,'b');
hold on;
w_temp(:,2) = scatter([a, b], [wzor(a), wzor(b)], [], [0 0.5 0], 'filled');
w_temp(:,3) = scatter(x_step,y_step, [], [0.75 0.75 0], 'filled');
w_temp(:,4) = scatter([a_finish, b_finish], [wzor(a_finish), wzor(b_finish)], [], [1 0 0], 'filled');

title('Wykres przedstawiaj�cy wprowadzon� funkcj�.');
xlabel('Warto�ci osi OX'); % x-axis label
ylabel('Warto�ci osi OY'); % y-axis label
grid on;
grid minor;
hold off;

set(w_temp(:,1), 'Color', [0 0 1]); 
set(w_temp(:,2), 'MarkerFaceColor', [0 0.5 0]);
set(w_temp(:,3), 'MarkerFaceColor', [0.75 0.75 0]);
set(w_temp(:,4), 'MarkerFaceColor', [1 0 0]);

legend(w_temp(1,:), 'Przebieg funkcji', 'Przedzia� pocz�tkowy', 'Przedzia�y obliczane', 'Przedzia� ko�cowy');

%Umieszczanie danych w tabeli.
set(handles.uitable2, 'Data', [x_left;x_right]);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1);

% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton_iteracje.
function radiobutton_iteracje_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_iteracje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject, 'Value')
    set(handles.edit7, 'enable', 'on');
    set(handles.edit9, 'enable', 'off');
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton_iteracje


% --- Executes on button press in radiobutton_dokladnosc.
function radiobutton_dokladnosc_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_dokladnosc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject, 'Value')
    set(handles.edit7, 'enable', 'off');
    set(handles.edit9, 'enable', 'on');
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton_dokladnosc


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uipushtool2_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

zdjecie = getframe(handles.axes1);
Image = frame2im(zdjecie);
imwrite(Image, 'Image.jpg')
