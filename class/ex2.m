clc;
close all;
clear;

width = 1000;
height = 1000;
radius = 150;

image = zeros(width, height);

[rows, columns, numberOfColorChannels] = size(image);

% image_size = size(image);
% image_size(1,1) , image_size(1,2), image_size(1,3)

x = width / 2;
y = height / 2;
centerx = x;
centery = y;

imshow(image);


hold on;
teta = 0 : (2 * pi / 10000) : (2 * pi);
xx = radius * cos(teta) + centerx;
yy = radius * sin(teta) + centery;
k = ishold;
plot(xx, yy, 'w-', 'LineWidth', radius);
hold off;