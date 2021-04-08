clc;
close all;
clear all;
img1=imread('img\pool.png');


img1=rgb2gray(img1);
img1=imresize(img1,[250,250]);
temp = zeros(250, 250);
sum = 0;

image_size = size(image);

image_result = zeros(image_size(1, 1), image_size(1, 2));

for i=150:220
    for j=172:225
       img1(i,j)=50;
        end
       
end
    for i=150:220
    for j=172:225
 sum = [ img1(i-1, j-1) img1(i-1, j) img1(i-1, j+1) img1(i, j-1) img1(i, j) img1(i-1, j+1) img1(i+1, j-1) img1(i+1, j) img1(i+1, j+1)];
           sum = sort(sum);
           img1(i,j)= uint8(sum(5));        
    end
       
    end


imshow(img1)