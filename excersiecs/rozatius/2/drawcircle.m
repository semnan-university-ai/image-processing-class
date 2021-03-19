clc;
close all;
clear;

img=zeros(1000);
%draw circle
for th =0:pi/100000:2*pi
    xunit = 200 * cos(th) + 500;
    yunit = 200 * sin(th) + 500;
    img(uint32(xunit), uint32(yunit))=1;
end
imshow(img);