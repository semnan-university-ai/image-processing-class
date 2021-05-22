clc;
close all;
clear;

%load numbers  0-9
numbers= FunctionData();

FunctionSaveCaptcha(numbers,8)

image=FunctionCaptcha(8,numbers);
figure;
imshow(image);



%ocr(image)



