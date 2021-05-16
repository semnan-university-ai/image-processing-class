clc;
clear;
close all;

img1=imread('girl.png');
image1=img1;

R=image1(:,:,1);
G=image1(:,:,2);
B=image1(:,:,3);

subplot(2,3,2);imshow(img1),title('Original "girl"');
hist(R);
subplot(2,3,4);
bar(ans),title('Red Hist "girl"');

hist(G);
subplot(2,3,5);
bar(ans),title('Green Hist "girl"');

hist(B);
subplot(2,3,6);
bar(ans),title('Blue Hist "girl"');