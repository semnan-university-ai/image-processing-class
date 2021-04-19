clc;
clear data;
clear all;
w=imread('C:\Program Files\MATLAB\airplane.png');
 imshow(w)
 figure;
%  w=imresize(w,0.01)
w=0.33*w(:,:,1)+0.33*w(:,:,2)+0.34*w(:,:,3);


 imshow(w)
