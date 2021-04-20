clc;
clear;
close all;


image = imread('pool.png');
image=rgb2gray(image);

startX=350;
startY=230;

setColor=48;
telorance=2;

for x=1:110
    for y=1 : 110
        if image(startY+y,startX+x)>setColor+telorance;
            image(startY+y,startX+x)=setColor;
        else if image(startY+y,startX+x)<setColor-telorance;
                image(startY+y,startX+x)=setColor;
            end
        end
    end
end

imshow(image);