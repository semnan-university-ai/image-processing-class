clc;
clear data;
clear all;
w=imread('C:\Program Files\MATLAB\airplane.png');
 imshow(w)
 figure;
%  w=imresize(w,0.01)
w=w(:,:,1);
 imshow(w)
