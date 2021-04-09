% For this exercise I programed for 2 different stripes image
% 1St one pixels are from 1-255 with steps of 1
% 2nd one pixels are from 1-255 with steps of 60
close all
clear all
clc
pic=zeros(1020,1000);
for i=1:1020
    pic(i,1:1000)=ceil(i/4)+10;
end

pic=uint8(pic);
imshow(pic)
figure;
d=0;
for i=1:17
    for j=1:60
       d=d+1; 
       pic(d,1:1000)=(i*15); 
    end
end    
pic=uint8(pic);
imshow(pic)

    
    