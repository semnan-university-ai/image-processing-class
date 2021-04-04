clc;
clear all;
close all;
captcha = zeros(25 , 125);
cut = 1;
for i = 1 : 5
    r = randi([1 5]);
    if r == 1
        in = 'char\A.txt';
    elseif r == 2
        in = 'char\B.txt';
    elseif  r == 3
        in = 'char\C.txt';
    elseif  r == 4
        in = 'char\D.txt';
    elseif  r == 5
        in = 'char\E.txt';
       end
    data = dlmread(in);
    cols = size(data,2);
    captcha( :  , cut : cut + cols - 1) = data;
    cut = cut + cols;
end
imshow(captcha);