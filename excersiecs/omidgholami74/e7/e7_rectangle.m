clc;
close all;
clear all;

length=5;
width=2;
xCentre=0;
yCentre=0;

u=[-1 1 1 -1];
x=[u u(1)].*(length/2);
u=circshift(u,[0 -1]);
y=[u u(1)].*(width/2);
plot(x,y,'k');
xlim([x(1)-2,x(2)+2]);
ylim([y(3)-2,y(2)+2])