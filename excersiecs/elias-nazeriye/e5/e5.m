close all;
clear all;
clc;

pic=imread("e5.jpeg");
pic = rgb2gray(pic);
for x=1:size(pic,1)
   for y=1:size(pic,2)
       r(x,y) = pic(x,y);
       r(x,size(pic,2)+y)=pic(x,size(pic,2)-y+1);
   end
end
imshow(r);