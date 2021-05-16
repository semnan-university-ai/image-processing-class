clc;
close all;
clear all;
image = rgb2gray(imread('../../../benchmark/watch.png'));
figure,imshow(image);
%imsave;
imageSize = size(image);
height = imageSize(1,1);
width = imageSize(1,2);
imageResult = image;
circleY = (height+105);
circleX = (width-16);

r = 140;
t = 200;
for i=1 : 1000
    for j=1 : 1000
        circle = (((circleY/2)-i)^2)/1 +(((circleX/2)-j)^2)/1.5;
        if  circle <= r^2
            imageResult(i, j) = 255;
        end
    end
end
figure,imshow(imageResult);
imsave;