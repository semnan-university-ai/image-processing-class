
clc;
close all;
clear;

a=255;
plate=zeros(a);
for i = 1:a
    plate(i:i,1:a)=i/255;
end
imshow(plate);