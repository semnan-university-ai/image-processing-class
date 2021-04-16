clc;
clear all;
close all;
img=imread('0-9');
imgcap=zeros(0,0,'logical');
a1=0;
for i=0:3
    B=randi([1,9]);
    a1=a1+B*10^(3-i);
    p=randi([1,20]);
    q=randi([1,10]);
    C=B*100+1;
    D=i*40+1+q;
    imgcap(p:60+p, D:D+39) = img(40:100, C+30:C+69);
end    
for i=1:3000
    X=randi([1,size(imgcap,1)]);
    Y=randi([1,size(imgcap,2)]);
    imgcap(X,Y)=randi([0,1])*255;
end
figure;
imshow(imgcap),title(int2str(a1));
