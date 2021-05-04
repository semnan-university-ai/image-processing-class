clc;
close all;
clear;

width = 2000;
height = 2000;

image = zeros(width, height);
image = uint8(image);

image(300:1200, 1800:1850) = 255;

image(1000:1200, 1500:1700) = 255;
image(1150:1200, 1000:1500) = 255;

image(1000:1200, 950:1000) = 255;
image(1150:1200, 500:1000) = 255;
image(1350:1400, 600:900) = 255;

image(1150:1600, 450:500) = 255;
image(1600:1650, 150:500) = 255;

figure, imshow(image);