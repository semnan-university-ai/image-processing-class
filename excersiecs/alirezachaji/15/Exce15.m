close all
clear all
clc
a=imread("..\..\..\benchmark\pool.png");
imshow(a);
a=rgb2gray(a);
figure;
imshow(a)
for i=230:350
    for j=350:470
        a(i,j)=a(i-1,j);
    end
end
a=uint8(a);
figure;
imshow(a)
