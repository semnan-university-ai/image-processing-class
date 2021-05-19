clc;
close all;
clear;

alphabet_count = 20;
width = 500;
height = 200;

[width,height] = Normalize(alphabet_count,width,height);

captcha_image = MyFunction(alphabet_count,width,height);
imshow(im2bw(captcha_image, 0.3));
ocr(captcha_image)