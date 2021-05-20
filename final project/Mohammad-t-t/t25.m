clc; close all; clear;


for i=1:10
    numbers(:,:,i) = dlmread([cd filesep 'text\',int2str(i-1),'.txt']);
end
numbers = uint8(numbers);

for i=1:150
    captcha_image=creatCAP( numbers,5,500,200);
    imwrite(captcha_image,['c:\captcha\',num2str(i),'.png']);
end

%ocr(captcha_image)