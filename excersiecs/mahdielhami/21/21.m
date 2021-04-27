clc;
close all;
clear all;
img = imread("img/baboon.png");
isize=size(img);
[h,w,m] = size(img);
result = zeros(isize);
for n =1:m
    for i=1:h
        for j=1:w
            if img(i,j,n)<=50
                result(i,j,n) = 0;
            end
            if (img(i,j,n)>=51)&&(img(i,j,n)<=101)
                result(i,j,n) = 51;
            end
            if (img(i,j,n)>=102)&&(img(i,j,n)<=152)
                result(i,j,n) = 102;
            end
            if (img(i,j,n)>=153)&&(img(i,j,n)<=203)
                result(i,j,n) = 153;
            end
            if (img(i,j,n)>=204)&&(img(i,j,n)<=254)
                result(i,j,n) = 204;
            end
            if (img(i,j,n)==255)
                result(i,j,n) = 255;
            end
        end
    end
end

figure,imshow(uint8(result));
imsave;
    
