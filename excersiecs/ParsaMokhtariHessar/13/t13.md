clc;
close all;
clear all;
image = imread('../benchmark/goldhill.png');
imageSize = size(image);
height = imageSize(1,1);
width = imageSize(1,2);
% Negative
imageNegative = zeros(imageSize);
for i=1:height
    for j=1:width
        imageNegative(i,j) = 255 - image(i,j);
    end
end
imageNegativeNoisy = imageNegative;
% noise salt & pepper
a = 0.05; % 5% pixels altered
b = 0.5; % 50% percent white pixels among all altered pixels
n = numel(imageNegativeNoisy(:,:,1));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
idx1 = idx1' + n.*(0:size(imageNegativeNoisy,3)-1);
idx1 = idx1(:);
idx2 = idx2' + n.*(0:size(imageNegativeNoisy,3)-1);
idx2 = idx2(:);
imageNegativeNoisy(idx1) = 255;
imageNegativeNoisy(idx2) = 0;
figure;
ax2 = axes();
imshow(uint8(imageNegativeNoisy));
sumNoisy = 0;
for i=1:height
    for j=1:width
        sumNoisy=sumNoisy+imageNegativeNoisy(i,j);          
    end
end
numberOfPixels=height*width;
N = sumNoisy / numberOfPixels ;
disp("NegativeNoisy : "+round(N));
