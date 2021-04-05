clc;clear;close all;

img=imbinarize(imread('A-Z.png'));
[m,n] = size(img);

imgcaptcha=zeros(0,0,'logical');

for i=0:8
    B=randi([0,8]);
    C=B*110+1;
    D=i*110+1;
    L=randi([0,2]);
    P=L*120+1;
    imgcaptcha(1:120,D:D+110) = img(P:P+119, C:C+110);
end    

figure;imshow(imgcaptcha);