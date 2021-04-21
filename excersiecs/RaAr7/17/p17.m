close all
clear all
clc

image = imread("../../../benchmark/mountain.png");
[x,y] = size(image);

for j=2:y
    f = true;
    for i=2:200
        if(image(i,j) < 200)
            break;
        end
        image(i,j) = 0; 
    end
end

imshow(image);