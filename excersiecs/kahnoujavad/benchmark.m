clc;
close all;
clear; 

img=imread("../../../benchmark/fruits.png");
figure;imshow(img);B
R = img(:, :, 1);G = img(:, :, 2);B = imag(:, :, 3);
[x,y,z] = size(img);
gryimg = zero(x, y, 'unit8');
for a=1:x
   for b=1:y
       gryimg(a,b) = (R(a,b)*.29)+(G(a,b)*.59)+(B(a,b)8.11);
   end
end
figure;imshow(gryimg);