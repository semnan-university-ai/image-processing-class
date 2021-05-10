clear;
close all;

einstein = imread('einstein.bmp');
einstein_coat_damage = imread('einstein_coat_damage.bmp');
einstein_blur_eye = imread('einstein_blur_eye.bmp');
einstein_histogram_change = imread('einstein_histogram_change.bmp');

%figure, imshow(einstein);
%figure, imshow(einstein_coat_damage);
%figure, imshow(einstein_blur_eye);
%figure, imshow(einstein_histogram_change);

x_bound = 600;
y_bound = 600;
MSE = 0;
PSNR = 0;
L = 256;
img_ref = zeros(x_bound, y_bound);
img_two = zeros(x_bound, y_bound);
temp_mse = 0;

img_ref = einstein;

for i = 1 : 599
    for j = 1 : 599
        img_two(i,j) = 255 - img_ref(i, j);
    end
end

img_two = uint8(img_two);

for i = 1 : x_bound
    for j = 1 : y_bound
        temp_mse = ( int64(img_ref(i,j)) - int64(img_two(i,j)) ) ^ 2;
        MSE = MSE + temp_mse;
    end
end

MSE = (1 / (x_bound * y_bound)) * MSE

if(MSE == 0)
    PSNR = 0
else
    PSNR = 10 * log10((L ^ 2) / double(MSE))
end
