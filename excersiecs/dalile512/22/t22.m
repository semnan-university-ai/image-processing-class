%%
clc;
clear;
close all;
%%
image=imread('girl.png');
one=image;
red = image(:,:,1);
blue =image(:,:,3);
image(:,:,3)=red;
image(:,:,1)=blue;
%%%
im(:,:,3)=red;
im(:,:,1)=blue;
%%%
subplot(1,2,1);imshow(one);title('Orginal Image','Color','r');
subplot(1,2,2);imshow(image);title('Red and Blue shift Image','Color','b');
% subplot(1,3,3);imshow(im);title('Red and blue shift2');