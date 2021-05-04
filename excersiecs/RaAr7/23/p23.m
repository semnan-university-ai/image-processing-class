close all
clear all
clc

image = imread("../../../benchmark/airplane.png");

r = p23_histogram(image(:,:,1));
g = p23_histogram(image(:,:,2));
b = p23_histogram(image(:,:,3));

subplot(3,1,1)
plot(r);
title('R Component');
subplot(3,1,2)
plot(g);
title('G Component');
subplot(3,1,3)
plot(b);
title('B Component');