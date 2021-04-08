clc;
clear;
close all;
pic=rgb2gray(imread('d:\tamrin\12\yas.jpg'));
[a,b] = size(pic);
 
for i=1:50000
        X=randi([1,a]);
        Y=randi([1,b]);
        pic(X,Y)=randi([0,1])*255;
end
figure;
imshow(pic);
t = im2double(pic);

p = [];

%--------------------Median filter 

for i=2:a-1
    for j=2:b-1
            p(1) = t(i-1,j-1);
            p(2) = t(i-1,j) ;
            p(3) = t(i-1,j+1);
            p(4) = t(i,j-1);
            p(5) = t(i,j+1);
            p(6) = t(i+1, j-1);
            p(7) = t(i+1,j);
            p(8) = t(i+1,j+1);
            t(i,j) = median(p);
    end
end 
figure;
imshow(t);
%----------------Mean filter 
B = im2double(pic);
for i=2:a-1
    for j=2:b-1
            p(1) = B(i-1,j-1);
            p(2) = B(i-1,j) ;
            p(3) = B(i-1,j+1);
            p(4) = B(i,j-1);
            p(5) = B(i,j+1);
            p(6) = B(i+1, j-1);
            p(7) = B(i+1,j);
            p(8) = B(i+1,j+1);
            B(i,j) = mean(p);
    end
end 
figure;
imshow(B);