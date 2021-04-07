clc;
close all;
clear;

img=imread("kozeh.png");
img = rgb2gray(img);
for x=1:size(img,1)
   for y=1:size(img,2)
       result(x,y) = img(x,y);
       result(x,size(img,2)+y)=img(x,size(img,2)-y+1);
   end
end
imshow(result);
