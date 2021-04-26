clc;
close all;
clear;

numbers(:,:,1) = dlmread("..\excersiecs\mahdielhami\10\number\1.txt");
numbers(:,:,2) = dlmread("..\excersiecs\mahdielhami\10\number\2.txt");
numbers(:,:,3) = dlmread("..\excersiecs\mahdielhami\10\number\3.txt");
numbers(:,:,4) = dlmread("..\excersiecs\mahdielhami\10\number\4.txt");
numbers(:,:,5) = dlmread("..\excersiecs\mahdielhami\10\number\5.txt");
numbers(:,:,6) = dlmread("..\excersiecs\mahdielhami\10\number\6.txt");
numbers(:,:,7) = dlmread("..\excersiecs\mahdielhami\10\number\7.txt");
numbers(:,:,8) = dlmread("..\excersiecs\mahdielhami\10\number\8.txt");
numbers(:,:,9) = dlmread("..\excersiecs\mahdielhami\10\number\9.txt");
numbers = uint8(numbers);

numbers_count = 4;
width = 500;
height = 200;

captcha_numbers = [ round(rand(1, numbers_count) * 10) - 1 ];
captcha_numbers = uint8(captcha_numbers);

captcha_image = zeros(size(numbers(:,:,1)));
captcha_image = numbers(:,:,1);

for i = 2 : numbers_count
    if captcha_numbers(1,i) == 0
        captcha_numbers(1,i) = 1;
    end
	captcha_image = [ captcha_image numbers(:,:,captcha_numbers(1,i)) ];
end

captcha_image = imresize(captcha_image, [height width]);
imshow(im2bw(captcha_image, 0.3));

ocr(captcha_image)