clc;
clear;
close all;

image = imread('girl.png');
sizePic= size(image);
result=image;

for k =1 :3
result(:,:,k)=fix(image(:,:,k)/51)*51;
end

subplot(1,2,1); imshow(image);
subplot(1,2,2);imshow(result);
