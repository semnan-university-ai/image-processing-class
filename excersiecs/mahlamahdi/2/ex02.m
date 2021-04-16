clc
clear;
close all;

theta=linspace(0,2*pi);
a=input('Enter X: ');
b=input('Enter Y: ');
r=input('Enter R: ');
x=r.*sin(theta)+a;
y=r.*cos(theta)+b;
img=zeros(1000,1000);
imshow(img);
hold on
plot(x,y,"-w",line,r);
hold off

