clc;
close all;
clear all;

image =zeros(255,500);
image =uint8(image);
imageSize=size(image);

for i=1:imageSize(1,1)
    for j=1:imageSize(1,2)
        image(i,j)=i-1;
    end
end
imshow(image);