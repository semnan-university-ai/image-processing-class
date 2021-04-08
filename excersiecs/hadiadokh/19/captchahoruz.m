clc;
clear;
close all;
pic=im2bw(imread('A-Z.png'));
[m,n] = size(pic);
captcha=zeros(0,0,'logical');
for i=0:8
    B=randi([0,8]);
    C=B*110+1;
    D=i*110+1;
    L=randi([0,2]);
    P= L*120+1
    captcha(1:120,D:D+110) = pic(P:P+119, C:C+110);
end    
figure;
imshow(captcha);