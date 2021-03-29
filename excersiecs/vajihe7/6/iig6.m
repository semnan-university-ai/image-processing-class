clc;
close all;
clear;

a=256;
image=zeros(a*4);
for i = 1 : a
    image((i*4)+4 : (i*4)+6,1 : a*4)= i/a;
end
imshow(image);
