close all
clear all
clc
image=imread("benchmark/lena.png");
imshow(image)
newimage=0.299*image(:,:,1)+0.587*image(:,:,2)+0.114*image(:,:,3);
figure;
imshow(newimage)

            
            