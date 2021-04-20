clc;
clear;
close all;

image = imread("img/baboon.png");
image = rgb2gray(image);
image_size = size(image);

for i = 1 : image_size(1, 1)
    for j = 1 : image_size(1, 2)
        
        if( image(i,j ) > 60 )
            image(i,j) = 210;
        end
        
        if( image (i,j ) < 60 )
            image(i,j) = 10;
            
        end
        
    end
end


imshow(image);