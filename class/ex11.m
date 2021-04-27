clc;
close all;
clear;

size = 512;

image = imread("../benchmark/fruits.png");
image = rgb2gray(image);
image = imresize(image, [ size size ]);

dots_count = round(rand() * 100000);
color = 0;

for i = 1 : dots_count
	randX = round(rand() * 1000);
	randY = round(rand() * 1000);

    if(randX > size || randX < 1)
    	randX = size;
    end
    if(randY > size || randY < 1)
    	randY = size;
    end
    
    image(randX, randY) = color;
    
    if color == 0 
        color = 255;
    else
        color = 0;
    end
    
end

imshow(image);