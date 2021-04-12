clc;
close all;
clear;

width = 8;
height = 8;
column_size = 50;

image = zeros(width * column_size, height * column_size);

color = 0;

for i = 1 : column_size : width * column_size
    for j = 1 : column_size : height * column_size
        
        if color == 255
            color = 0;
        else
            color = 255;
        end
        
        for k = i : i + column_size
            for l = j : j  + column_size
                image(k, l) = color;
            end
        end
        
    end
    
    if mod(height, 2) == 0
        if color == 255
            color = 0;
        else
            color = 255;
        end
    end
    
end

image = uint8(image);
imshow(image);