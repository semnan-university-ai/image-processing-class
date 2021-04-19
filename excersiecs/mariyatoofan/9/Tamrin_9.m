clear all
close all
clc
image = imread('MyImage.jpg');

prompt = {'X1:','Y1:','X2:','Y2:'};
dlg_title = 'Input';
num_lines = 1;
def = {'100','100','100','100'};
answer = inputdlg(prompt,dlg_title,num_lines,def);
x1=str2double(answer{1});
y1=str2double(answer{2});
x2=str2double(answer{3});
y2=str2double(answer{4});
I2 = imcrop(image,[x1 y1 x2 y2]);
subplot(121)
imshow(image)
title('Original')
subplot(122)
imshow(I2)
title('Cropped')