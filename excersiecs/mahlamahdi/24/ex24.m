clc;
clear;
close all;

pic_ww = imread('watch.png');
pic_p = imread('pool.png');
[m, n , r] = size(pic_p);
pic_w = imresize(pic_ww, [m, n]);
subplot(2,2,1), imshow(pic_w), title("Orginal Watch.png");
subplot(2,2,3), imshow(pic_p), title("Orginal pool.png");
temp_w=pic_w(:,:,1);
temp_p= pic_p(:,:,1);

pic_w(:,:,1)= temp_p;
pic_p(:,:,1) = temp_w;
subplot(2,2,2), imshow(pic_w), title("Modify Watch.png");
subplot(2,2,4), imshow(pic_p), title("Modify pool.png");