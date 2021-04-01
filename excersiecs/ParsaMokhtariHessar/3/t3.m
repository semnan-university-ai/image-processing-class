clc;
close all;
clear all;

image = imread("../benchmark/fruits.png");
imsize = size(image);
ImageGrey = zeros(imsize(1,1),imsize(1,2));
for i=1 : 512
    for j=1 : 512
        %  Grayscale = 0.299 * Red + 0.587 * Green + 0.114 * Blue using this formula
        ImageGrey(i, j) = 0.299 * image(i, j, 1) + 0.587 * image(i, j, 2) + 0.114 * image(i, j, 3);
    end
end

 image2 = rgb2gray(image);

 figure,
 imshow(image);
 figure,
 imshow(image2);
figure,
imshow(uint8(ImageGrey));
%imsave
