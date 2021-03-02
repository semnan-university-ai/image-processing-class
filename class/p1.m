close all;
clear all;
clc;


image1 = imread("img/lena.png");
image2 = imresize(image1, [250 250]);
image3 = rgb2gray(image1); % rbg to gray
image4 = image3;

figure,
imshow(image1);
figure,
imshow(image2);
figure,
imshow(image3);

for i = 1 : 512
    for j = 1 : 512
        if image4(i, j) > 150
            image4(i, j) = 255;
        end
        if image4(i, j) < 150
           image4(i, j) = 0;
        end
    end
end

figure,
imshow(image4);