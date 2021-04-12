ابتداه تصویر را خوانده

clc;
clear data;
clear all;
w=imread('C:\Program Files\MATLAB\airplane.png');
 imshow(w)
 figure;
 
کانال های رنگی را خوانده وباهم جمع کرده و تقسیم بر 3 میکنیم.


w=0.33*w(:,:,1)+0.33*w(:,:,2)+0.34*w(:,:,3);


 imshow(w)
