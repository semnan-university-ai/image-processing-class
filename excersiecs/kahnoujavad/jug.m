clc;
close all;
clear; 

img=imread("jug.png");
[s,y,z]=size(img);
targetimg = zeros(x, y*2, z,'unit8');
for i=1:x
    for j=1:y
        targetimg(i,j,:) = img(i,j,:);
        targetimg(i,y+j,:) = img(i,y-j+1,:);
        end
end
imgshow(targetimg);
