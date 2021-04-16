close all
clear all
clc
pic=imread('benchmark\fruits.png');
subplot(1,2,1);imshow(pic);
title('Original Image')
n=size(pic);
for i=1:n(1)
    for j=1:n(2)
        for k=1:n(3)
            pic(i,j,k)=floor(pic(i,j,k)/51)*51;
        end
    end
end 
pic=uint8(pic);
subplot(1,2,2);imshow(pic);
title('Safe Color')
