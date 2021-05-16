clc;
close all;
clear;


image = imread("../../../benchmark/fruits.png");


r_channel = image(:,:,1);
g_channel = image(:,:,2);
b_channel = image(:,:,3);

hs_r = histogram(r_channel);
hs_g = histogram(g_channel);
hs_b = histogram(b_channel);

subplot(2,2,1); imshow(image); title('original image');
subplot(2,2,2); bar(hs_r); title('Red Histogram');
subplot(2,2,3); bar(hs_g); title('Green Histogram');
subplot(2,2,4); bar(hs_b); title('Blue Histogram');



