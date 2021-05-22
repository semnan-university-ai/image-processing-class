clc;
close all;
clear;

%load chacters 
numbers=loadData('..\data',1);

% build Captcha
for i = 1:50
    [txtCaptcha,imgCaptcha] = Captcha(numbers,4,true,true,true); %build
    imwrite(imgCaptcha, '..\image\'+string(i)+'-('+txtCaptcha+').jpg'); %save in image folder
    subplot(10,15,i),imshow(imgCaptcha),title(txtCaptcha); %show 50 captcha
end

% ocr
[fn, ro] = ocr("..\image\");

