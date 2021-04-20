close all;
clear all;
clc;

p=zeros(255*3);
for i = 0:500
    p((i*3)+200:(i*3)+300,1:256*3)=i/255;
end
imshow(p);