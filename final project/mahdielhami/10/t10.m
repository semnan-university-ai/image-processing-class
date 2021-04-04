clc
clear all
close all
captcha = zeros(25 , 125);
cut = 1;
for i = 1 : 5
    ran = randi([0 9]);
    if ran == 0
        add = 'number\0.txt';
    elseif ran == 1
        add = 'number\1.txt';
    elseif  ran == 2
        add = 'number\2.txt';
    elseif  ran == 3
        add = 'number\3.txt';
    elseif  ran == 4
        add = 'number\4.txt';
    elseif  ran == 5
        add = 'number\5.txt';
    elseif  ran == 6
        add = 'digit\6.txt';
    elseif  ran == 7
        add = 'number\7.txt';
    elseif  ran == 8
        add = 'number\8.txt';
    else
        add = 'number\9.txt';
    end
    data = dlmread(add);
    cols = size(data,2);
    captcha( :  , cut : cut + cols - 1) = data;
    cut = cut + cols;
end
imshow(captcha);