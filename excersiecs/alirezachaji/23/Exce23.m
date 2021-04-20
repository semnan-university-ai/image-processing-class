close all
clear all
clc
pic=imread('benchmark\fruits.png');
subplot(2,2,1);imshow(pic);
title('Original Image')
r=pic(:,:,1);
g=pic(:,:,2);
b=pic(:,:,3);
ch_hist(r);
subplot(2,2,2);bar(ans);
title('Red Histogram')

ch_hist(g);
subplot(2,2,3);bar(ans);
title('Green Histogram')

ch_hist(b);
subplot(2,2,4);bar(ans);
title('Blue Histogram')


