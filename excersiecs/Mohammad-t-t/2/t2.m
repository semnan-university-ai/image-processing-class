clc;
close all;
clear;

r=300; 
x=500; 
y=500; 

image = zeros(1000,1000);


for i=1 : 0.01: 365
    ci=  round((r*cosd(i))+x);
    si= round((r*sind(i))+y);
    image(ci,si)=255;
end

imshow(image);
