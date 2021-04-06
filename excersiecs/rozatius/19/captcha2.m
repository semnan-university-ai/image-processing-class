clc;clear;close all;

img=imread('A-Z');
imgcaptcha=zeros(0,0,'logical');
ttl=0;code='';
for i=0:8
    B=randi([1,9]);
    L=randi([0,3]);
    if L<2 
        ttl=65+(L*13+B);
    else
        ttl=71+(L*13+B);
    end
    
    code=strcat(code,char(ttl));
    p=randi([1,20]);
    q=randi([1,10]);
    
    C=B*100+1;
    D=i*40+1+q;
    h=L*100+1;
    imgcaptcha(p:59+p, D:D+39) = img(40+h:99+h, C+30:C+69);
end    
%add noise
for i=1:7000
    X=randi([1,size(imgcaptcha,1)]);
    Y=randi([1,size(imgcaptcha,2)]);
    imgcaptcha(X,Y)=randi([0,1])*255;
end
figure;
imshow(imgcaptcha),title(code);

