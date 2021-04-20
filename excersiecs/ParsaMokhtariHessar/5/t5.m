clc;
close all;
clear all;

image = imread("koozeh.png");
%imshow(image);
imagesize=size(image);
for j=1 : imagesize(1, 2)/2
    for i=1 : imagesize(1, 1)
        image(i,imagesize(1, 2)-j)=image(i, j) ;
    end
end
figure,
imshow(image);
% imsave
% the picture in this exercise is copyrighted
% Courtesy of imastudios inc.
% please don't copy! 
% thank you for respecting that!
