clc;
close all;
clear;

image = imread("../benchmark/fruits.png");
image_size = size(image);

figure, imshow(image);

for i = 1 : image_size(1, 1)
    for j = 1 : image_size(1, 2)
        for k = 1 : image_size(1, 3)
            image(i, j, k) = safe_color(image(i, j, k));
        end
    end
end


figure, imshow(image);


function newColor = safe_color(color)
    newColor = 0;
    
    if color < 51
        newColor = 0;
    elseif color > 51 && color <= 102
        newColor = 102;
    elseif color > 102 && color <= 153
        newColor = 153;
    elseif color > 153 && color <= 204
        newColor = 204;
    elseif color > 204 && color <= 255
        newColor = 255;
    end
end