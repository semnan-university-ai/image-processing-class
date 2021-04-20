clc;
close all;
clear all;

image = zeros(1000,1000);
r = input('radius= ');
xcenter = input('x center= ');
ycenter = input('y center= ');
imshow(image)
hold on
thelta = linspace(0,2*pi);
x = r*cos(thelta) +xcenter;
y = r*sin(thelta) +ycenter;
plot(x,y,'w','LineWidth',5)
axis equal;