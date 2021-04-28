close all;
clear all;
clc;
image=imread('C:\Users\as\Downloads\pool.png');

r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);

subplot(3,2,1);
imhist(r);
title('Red Histogram with imhist')
subplot(3,2,2);
bar(hist(r),'r');
title('Red Histogram')


subplot(3,2,3);
imhist(g);
title('Green Histogram with imhist')
subplot(3,2,4);
bar(hist(g),'g');
title('Green Histogram')


subplot(3,2,5);
imhist(b);
title('Blue Histogram with imhist')
subplot(3,2,6);
bar(hist(b),'b');
title('Blue Histogram')