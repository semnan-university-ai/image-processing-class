close all;
clear all;
clc;

pic1 = imread("girl.png");
ps=size(pic1);
     for i = 1:ps(1)
        for j=1:ps(2)
            pic2(i,j) = 0.33*(pic1(i, j, 1)) + 0.33*(pic1(i, j, 2)) + 0.33*(pic1(i, j, 3));
        end
     end
subplot(1,2,1),imshow(pic1);
subplot(1,2,2),imshow(pic2);