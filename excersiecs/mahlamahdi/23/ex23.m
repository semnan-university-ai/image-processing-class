clc;
close all;
clear all;

image = imread("fruits.png");
image2 = image;
[m, n ,r] = size(image);
 
for p=1:r
  hist=compute_hist(image(:,:,p));
  bar(hist);
  subplot(2,3,p); bar(hist); 
end

subplot(2,3,4:6), imshow(image);
 
