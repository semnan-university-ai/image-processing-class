clc;
clear all;
close all;

image = imread("img/airplane.png");
image = rgb2gray(image);

figure,
imshow(image);
newColor = 110;

for i = 1 : 512
    for j = 1 : 512
        
        if ( image(i, j) > 40 && image(i, j) < 80 )
            image(i, j) = newColor;
            newColor = newColor + 3;
        end
        
    end
end

figure,
imshow(image);