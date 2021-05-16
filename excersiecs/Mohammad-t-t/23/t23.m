clc;
clear;
close all;

pic = imread('girl.png');

color=['r','g','b'];

x=1;
for i=1 : 3
histo=rgbHisto(pic(:,:,i));

subplot(3,2,x); imshow(pic(:,:,i));
subplot(3,2,x+1); bar(histo,color(i));
x=x+2;
end
