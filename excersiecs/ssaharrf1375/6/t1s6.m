clc;
close all;
clear;

image=zeros(125*2);
for i = 0:125
    image((i*2)+1:(i*2)+2,1:125*2)=i/125;
end
imshow(image);