clc;
close all;
clear all;

img = zeros(1000,1000);
R = input('radius= ');
xc = input('x center= ');
yc = input('y center= ');
imshow(img)
hold on
theta = linspace(0,2*pi);
x = R*cos(theta) +xc;
y = R*sin(theta) +yc;
plot(x,y,'w','LineWidth',5)
axis equal;