close all;
clear all;
clc;

pic = imread("girl.png");
imsiz=size(pic);
[h,w,d] = size(pic);
imageResult = zeros(imsiz);
for k =1:d
    for i=1:h
        for j=1:w
            if pic(i,j,k)<=50
                imageResult(i,j,k) = 0;
            end
            if (pic(i,j,k)>=51)&&(pic(i,j,k)<=101)
                imageResult(i,j,k) = 51;
            end
            if (pic(i,j,k)>=102)&&(pic(i,j,k)<=152)
                imageResult(i,j,k) = 102;
            end
            if (pic(i,j,k)>=153)&&(pic(i,j,k)<=203)
                imageResult(i,j,k) = 153;
            end
            if (pic(i,j,k)>=204)&&(pic(i,j,k)<=254)
                imageResult(i,j,k) = 204;
            end
            if (pic(i,j,k)==255)
                imageResult(i,j,k) = 255;
            end
        end
    end
end

figure,imshow(uint8(imageResult));
 