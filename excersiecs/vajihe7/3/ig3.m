clear all;
close all;
clc;
image = imread('benchmark/fruits.png');
figure;
imshow(image);
a=size(image);
if a >= 1
  image = image( : , : , 2); 
end
figure;
imshow(image);



