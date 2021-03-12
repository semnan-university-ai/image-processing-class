clc;
close all;
clear;

img=zeros(255*3);
for i = 0:255
    img((i*3)+1:(i*3)+3,1:256*3)=i/255;
end
imshow(img);