clc;clear;close all;
img=im2bw(imread('0-9.jpg'));
%imshow(img);
imgcaptcha=zeros(0,0,'logical');
for i=0:3
    B=randi([0,9]);
    C=B*110+1;
    D=i*110+1;
    imgcaptcha(1:size(img,1),D:D+110) = img(1:size(img,1), C:C+110, :);
end    
figure;
imshow(imgcaptcha);
