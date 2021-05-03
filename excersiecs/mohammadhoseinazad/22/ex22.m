clc;
close all;
clear;

img=imread("../../../benchmark/girl.png");
%%img=imread("C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\girl.png");

red = img(:, :, 1);green = img(:, :, 2);blue = img(:, :, 3);
[X,Y,Z] = size(img);

imgout = zeros(X, Y, Z, 'uint8');
for r=1:X
   for c=1:Y
       imgout(r,c,1)=green(r,c);
       imgout(r,c,2)=red(r,c);
       imgout(r,c,3)=blue(r,c);
   end
end
subplot(1,2,1),imshow(img);
subplot(1,2,2),imshow(imgout);
