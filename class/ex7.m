clc;
close all;
clear;

size = 500;

figure, imshow(createShape(size, "triangle"));
figure, imshow(createShape(size, "rectangle"));
figure, imshow(createShape(size, "square"));
figure, imshow(createShape(size, "rhombus"));


function output_shape = createShape(size, shape)
    
    padding = size;
    semi_padding = padding / 2;
    output_shape = zeros(size + padding, size + padding);

    if shape == "triangle"
        for i = semi_padding : semi_padding + size
            for j = semi_padding : semi_padding + (i - semi_padding)
                output_shape(i, j) = 255;
            end
        end
    elseif shape == "rectangle"
        output_shape(padding - (semi_padding / 2):padding + ...
            (semi_padding / 2), semi_padding:size + semi_padding) = 255;
    elseif shape == "square"
        output_shape(semi_padding:size + semi_padding, semi_padding:size + ...
            semi_padding) = 255;
    elseif shape == "rhombus"
        rhombus = zeros(size, size);
        for i = 40 : size
            for j = 1: i - 40
                rhombus(i, j) = 255;
            end
        end
        output_shape = [ flip(rhombus, 2) flip(rhombus, 4)];
        output_shape = [ output_shape ; flip(output_shape, 1) ];
    end
    
    output_shape = uint8(output_shape);
end