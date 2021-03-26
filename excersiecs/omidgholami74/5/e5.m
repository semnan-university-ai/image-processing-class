clc;
close all;
clear all;

image =imread('kozeh.bmp');
figure;
imshow(image);
image =rgb2gray(image);
figure;
imageSize=size(image);
imageBlack =zeros(imageSize(1,1),imageSize(1,2));
imageBlack=uint8(imageBlack);
for i=1:imageSize(1,1)
    for j=1:imageSize(1,2)
        imageBlack(i,j)=image(i,imageSize(1,2)-j+1);
    end
    
end
c =cat(2,image,imageBlack);
   imshow(c);     
        