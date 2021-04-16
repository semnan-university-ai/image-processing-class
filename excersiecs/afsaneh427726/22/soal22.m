clc;
clear data;
clear all;
image=imread('C:\Users\as\Downloads\pool.png');
imshow(image)
a=image(:,:,1);
b=image(:,:,3);
image(:,:,3)=a;
image(:,:,1)=b;
figure;
imshow(image);