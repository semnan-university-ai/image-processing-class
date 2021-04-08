clc;
close all;
clear;

pic=imread('d:\tamrin\5\kuze.jpg');
[px,py,pz]=size(pic);
outpic = zeros(px, py*2, pz,'uint8');
for i=1:px
   for j=1:py
       outpic(i,j,:) = pic(i,j,:);
       outpic(i,py+j,:)=pic(i,py-j+1,:);
   end
end
imshow(outpic);
