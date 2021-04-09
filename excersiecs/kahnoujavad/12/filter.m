clc;
clear all;
close all;
image=rgb2gray(imread("d:/image-processing-class/benchmark/fruits.png"));
[a, b] = size(image);
 
for i=1:30000
    X=randi([1,a]);
    Y=randi([1,b]);
    image(X,Y)=randi([0,1])*255;
end
figure;
imshow(image);
x = im2double(image);

k = [];
for i=2:a-1
    for j=2:b-1
            k(1) = x(i-1,j-1);
            k(2) = x(i-1,j) ;
            k(3) = x(i-1,j+1);
            k(4) = x(i,j-1);
            k(5) = x(i,j+1);
            k(6) = x(i+1, j-1);
            k(7) = x(i+1,j);
            k(8) = x(i+1,j+1);
            x(i,j) = median(k);
    end
end 
figure;
imshow(x);
y = im2double(image);
for i=2:a-1
    for j=2:b-1
            k(1) = y(i-1,j-1);
            k(2) = y(i-1,j) ;
            k(3) = y(i-1,j+1);
            k(4) = y(i,j-1);
            k(5) = y(i,j+1);
            k(6) = y(i+1, j-1);
            k(7) = y(i+1,j);
            k(8) = y(i+1,j+1);
            y(i,j) = mean(k);
    end
end 
figure;
imshow(y);