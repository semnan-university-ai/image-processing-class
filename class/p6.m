clc;
close all;
close all;

image = imread("img/airplane.png");
image = rgb2gray(image);

%imshow(image);
%imhist(image);

for i = 1 : 512
    for j = 1 : 512
        if( image(i, j) < 40 )
            image(i, j) = 0;
        elseif( image(i, j) > 40 && image(i, j) < 150)
            image(i, j) = 100;
        else
            image(i, j) = 255;
        end
    end
end

figure,
imhist(image);
figure,
imshow(image);