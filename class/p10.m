clc;
close all;
clear all;

image = imread("img/airplane.png");
image = rgb2gray(image);
imagesize = size(image);
temp = zeros(1, 8);
bitplane = zeros( imagesize(1,1)  , imagesize(1, 2) );
bitplanenumber = 1;

for i = 1 : imagesize(1,1)
    for j = 1 : imagesize(1, 2)
        temp = de2bi(image(i, j), 8);
        
        bitplane(i, j) = temp(1, bitplanenumber);
        %if(temp(1, bitplanenumber) == 0)
        %    bitplane(i, j) = 0;
        %else
        %    bitplane(i, j) = 255;
        %end
        
    end
end

figure;
%imshow(logical(bitplane));
imshow(bitplane);

figure;
bitplanematlab = bitget(image, bitplanenumber);
imshow(bitplanematlab);