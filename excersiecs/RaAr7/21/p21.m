close all
clear all
clc

image = imread("../benchmark/pool.png");
[x,y] = size(image);
image = (image/51);

i=1;
while(i<=x)
   j=1;
   while(j<=y)
        image(i,j) = (image(i,j))*51;
        j=j+1;
   end
   i=i+1;
end

imshow(image);