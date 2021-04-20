clc;
close all;
clear;
image1=imread("nim.png"); %koze asli
[x,y,z]=size(image1);
image2 = zeros(x, y, z,'uint8'); %koze gharine
for i=1:x
   for j=1:y
        image2(i,y+j,:)=image1(i,y-j+1,:);
       image2(i,j,:) = image1(i,j,:);
   end
end
figure;
imshow(image1);
figure;
imshow(image2);