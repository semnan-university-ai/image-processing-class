clc
clear;
close all;

t=0:0.1:6.3;
a=input('Enter X: ');
b=input('Enter Y: ');
r=input('Enter R: ');
x=r.*sin(t)+a;
y=r.*cos(t)+b;
img=zeros(1000,1000);
imshow(img);
hold on
plot(x,y);
hold off

