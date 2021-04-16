captcha = zeros(25 , 100);
cut = 1;
for i = 1 : 4
    Possibility = randi([0 9]);
    if Possibility == 0
        add = 'number\0.txt';
    elseif Possibility == 1
        add = 'number\1.txt';
    elseif  Possibility == 2
        add = 'number\2.txt';
    elseif  Possibility == 3
        add = 'number\3.txt';
    elseif  Possibility == 4
        add = 'number\4.txt';
    elseif  Possibility == 5
        add = 'number\5.txt';
    elseif  Possibility == 6
        add = 'number\6.txt';
    elseif  Possibility == 7
        add = 'number\7.txt';
    elseif  Possibility == 8
        add = 'number\8.txt';
    else
        add = 'number\9.txt';
    end
    data = dlmread(add);
    cols = size(data,2);
    captcha( :  , cut : cut + cols - 1) = data;
    cut = cut + cols;
end
captcha = imnoise(captcha , 'salt & pepper' , 0.3);
imshow(captcha);