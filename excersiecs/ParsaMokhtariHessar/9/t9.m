clc;
close all;
clear all;

image = imread("../../../benchmark/barbara.png");
[imageWidth , imageHeight ] = size(image);
offsetX=-100;
offsetY=100;
cropW = 200;
cropH = 200;
cropX = (imageWidth/2)-(cropW/2)+offsetX;
cropY = (imageHeight/2)-(cropH/2)+offsetY;
croppedImage = zeros(cropW,cropH);
for i = 1 :  cropW 
    for j = 1 :  cropH 
        croppedImage(i,j)=image(i+cropX,j+cropY);
    end
end
for i = 1 :  cropW 
    for j = 1 :  cropH
        if (i==1) || (j==1)||(i==cropW)||(j==cropH)
            image(i+cropX,j+cropY)=0;
        end
    end
end
figure,
imshow(image);
%imsave;
figure,
imshow(uint8(croppedImage));
%imsave;
