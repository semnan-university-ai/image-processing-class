close all
clear all
clc

image = imread("../benchmark/peppers.png");
imagesize = size(image);

R = image(:,:,1);
G = image(:,:,2);
B = image(:,:,3);

[M,N,~] = size(image);

Gray_image = zeros(M,N,'uint8');

for i=1:M
    for j=1:N
        Gray_image(i,j) = (0.299*R(i,j)) + (0.587*G(i,j)) + (0.114*B(i,j));
    end
end

imshow(Gray_image);