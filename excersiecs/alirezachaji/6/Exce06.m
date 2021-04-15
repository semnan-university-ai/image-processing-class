% For this exercise I programed for 2 different stripes image
% 1St one pixels are from 1-255 with steps of 1
% 2nd one pixels are from 1-255 with steps of 60
close all
clear all
clc
pic=zeros(1020,1000);
for i=1:1020
    pic(i,1:1000)=floor(i/4);
end

pic=uint8(pic);
subplot(1,2,1);imshow(pic)
d=0;
for i=1:17
    for j=1:60
       d=d+1; 
       pic(d,1:1000)=(i*15); 
    end
end    
pic=uint8(pic);
subplot(1,2,2);imshow(pic)

    
    