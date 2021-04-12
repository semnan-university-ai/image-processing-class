clc;
close all;
clear all;
im = imread('../../../benchmark/airplane.png');
if size(im,3) == 3 
    im=rgb2gray(im);
end
figure;
imshow(im);
a = 0.05; % 5% pixels altered
b = 0.5;  % 50% percent white pixels among all altered pixels
n = numel(im(:,:));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
im(idx1) = 255;
im(idx2) = 0;
figure;
imshow(im);
imsave;