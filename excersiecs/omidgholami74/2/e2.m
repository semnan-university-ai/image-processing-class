clc;
close all;
clear all;

A=zeros(1000,1000);
r =input('shoaa ra vared konid='); %radius
x=input('x markaze dayere ra vared konid=');
y=input('y markaze dayere ra vared konid=');
centeral = {x,y}; %midpoint
A(centeral{:})=1;

B = bwdist(A) <= r ;
imshow(B)