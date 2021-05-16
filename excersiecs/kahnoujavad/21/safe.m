clc;
clear all;
close all;
img = imread('D:\image-processing-class\benchmark\fruits.png');
subplot(1,2,1);
imshow(img);
title("orginal image");
safeimage=img;
[x,y,z]=size(img);
for i= 1:x
    for j =1:y
        for k=1:z
            safeimage(i,j,k)=fix(img(i,j,k)/51)*51;
        end
    end
end
subplot(1,2,2);
imshow(safeimage);
title("safe image");