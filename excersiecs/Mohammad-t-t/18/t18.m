clc;
clear;
close all;

image = imread('watch.png');
image=rgb2gray(image);

r=168;
y=442;
x=515;

for j=r:-1:1
for i=1 : 0.01: 365
    ci=  round((j*cos(i))+y);
    si= round((j*sin(i))+x);
    if image(ci,si)>85
    image(ci,si)=255;
    end
end
end

imshow(image);