
close all;
clear all;
clc;
r=input(" please enter desired radius:");
x=input(" please enter x coordinates of the centroid:");
y=input(" please enter y coordinates of the centroid:");
image=zeros(1000,1000);
imshow(image);
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
plot(xunit, yunit,'w','linewidth',3);
% axis equal;

