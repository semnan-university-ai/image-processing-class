close all;
clear all;
clc;

image = imread("img\cat.png");
figure,imshow(image);

r = image(:,:,1);
g = image(:,:,2);
b = image(:,:,3);

histogram(r);
subplot(3,1,1);bar(ans);
title('R');
histogram(g);
subplot(3,1,2);bar(ans);
title('G');
histogram(b);
subplot(3,1,3);bar(ans);
title('B');

function [colours] = histogram(image)
    [x,y] = size(image);
    colours = zeros(1,256);
    for i=1:x
        for j=1:y
          z = image(i,j);
          colours(z + 1) = colours(z + 1) + 1;
        end
    end
end