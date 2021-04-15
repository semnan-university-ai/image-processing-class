clc;clear;close all;

img=imread('0-9');
imgcaptcha=zeros(0,0,'logical');
ttl=0;
for i=0:3
    B=randi([1,9]);
    ttl=ttl+B*10^(3-i);
    p=randi([1,20]);
    q=randi([1,10]);
    C=B*100+1;
    D=i*40+1+q;
    imgcaptcha(p:60+p, D:D+39) = img(40:100, C+30:C+69);
end    
for i=1:3000
    X=randi([1,size(imgcaptcha,1)]);
    Y=randi([1,size(imgcaptcha,2)]);
    imgcaptcha(X,Y)=randi([0,1])*255;
end
figure;
imshow(imgcaptcha),title(int2str(ttl));
