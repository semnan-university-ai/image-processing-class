clc
clear all;
close all;
address = 'benchmark\mountain.png';
input_im = imread(address);
image = input_im;
img1= image;
r = ceil( size(image , 1) / 3 );
c = size(image , 2);
for i = 1 : r
    for j = 1 : c
        value = image(i,j);
        if value >= 200
            img1(i,j) = 0;
        end
    end
end
imshow(img1);