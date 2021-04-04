clc;
close all;
clear all;
img1=imread('img\peppers.png');
img1=rgb2gray(img1);
temp = zeros(250, 250);
        ran=randi([0 512],512,512);

for i=1:512
    for j=1:512
        if ran(i,j)<=10
            if img1(i,j)<128
                img1(i,j)=255;
            else
                img1(i,j)=0;
            end
        end
            
    end
end
imshow(img1);
