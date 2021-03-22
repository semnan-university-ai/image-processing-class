clc;
close all;
clear all;

img = imread('C:\Program Files\MATLAB\benchmark\lena.png');
subplot(2,1,1)
imshow(img)
title('image')
 

 n = size(img);
    grayImg = im2uint8(zeros(n(1), n(2)));
    temp = 0;
    for i = 1:n(1)
        for j=1:n(2)
            temp = int32(img(i, j, 1)) * .299 + int32(img(i, j, 2)) * .587 + int32(img(i, j, 3)) * .144;
            if(temp < 0)
                temp = 0;
            elseif(temp > 255)
                temp = 255;
            end
            grayImg(i,j) = int8(temp);
        end
    end


subplot(2,1,2)
imshow(grayImg)
title('gray')