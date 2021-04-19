clc;
clear;
close all;

image=imread("C:\Program Files\Polyspace\R2019b\bin\img\frymire.png");
subplot(2,1,1);
imshow(image);

R = image(:,:,1);G = image(:,:,2);B = image(:,:,3);
[size_r,size_c,size_z] = size(image);
image_result = zeros(size_r, size_c, size_z, 'uint8');

for r=1:size_r
   for c=1:size_c
       image_result(r,c,1)=B(r,c);
       image_result(r,c,2)=G(r,c);
       image_result(r,c,3)=R(r,c);
   end
end

subplot(2,1,2);
imshow(image_result);