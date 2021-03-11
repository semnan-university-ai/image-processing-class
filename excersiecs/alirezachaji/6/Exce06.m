close all
clear all
clc
pic=zeros(1020,1000);
for i=1:1020
    pic(i,1:1000)=ceil(i/4);
end
pic=uint8(pic);
imshow(pic)
    
    