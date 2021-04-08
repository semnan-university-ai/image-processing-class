clc;clear;close all;

img=imread("jug.png");
[sx,sy,sz]=size(img);

resultimg = zeros(sx, sy*2, sz,'uint8');

for x=1:sx
   for y=1:sy
       resultimg(x,y,:) = img(x,y,:);
       resultimg(x,sy+y,:)=img(x,sy-y+1,:);
   end
end
imshow(resultimg);