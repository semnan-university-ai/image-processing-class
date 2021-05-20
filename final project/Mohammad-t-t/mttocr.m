clc; close all; clear;


picList=dir('25\captcha\*.png');

for i=1 :150
    tempPic=imread(picList(i).name);
    exit=ocr(tempPic);
    Check(i,1)=exit.Words(1);
end
%ocr(captcha_image)