close all;
clear all;
clc;

pic=imread("mountain.png");

for i=1:150
    for j=1:639
        if (pic(i,j))>200
            pic(i,j)=0;
        end
    end
end


imshow(pic);