clc;
clear;
close all;

image = imread('mountain.png');

setColor=200;

for x=1:639
    for y=1 : 150
        if image(y,x)>setColor;
            image(y,x)=0;
        end
        if image(y+1,x)<setColor;
            break;
        end
    end
end

imshow(image);