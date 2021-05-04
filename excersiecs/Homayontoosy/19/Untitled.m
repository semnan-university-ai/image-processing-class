captcha = zeros(25 , 100);
cut = 1;
for i = 1 : 4
    Possibility = randi([1 26]);
    if Possibility == 1
        add = 'alphabet\A.txt';
    elseif Possibility == 2
        add = 'alphabet\B.txt';
    elseif  Possibility == 3
        add = 'alphabet\C.txt';
    elseif  Possibility == 4
        add = 'alphabet\D.txt';
    elseif  Possibility == 5
        add = 'alphabet\E.txt';
    elseif  Possibility == 6
        add = 'alphabet\F.txt';
    elseif  Possibility == 7
        add = 'alphabet\G.txt';
    elseif  Possibility == 8
        add = 'alphabet\H.txt';
    elseif  Possibility == 9
        add = 'alphabet\I.txt';
    elseif Possibility == 10
        add = 'alphabet\J.txt';
    elseif Possibility == 11
        add = 'alphabet\K.txt';
    elseif Possibility == 12
        add = 'alphabet\L.txt';
    elseif Possibility == 13
        add = 'alphabet\M.txt';
    elseif Possibility == 14
        add = 'alphabet\N.txt';
    elseif Possibility == 15
        add = 'alphabet\O.txt';
    elseif Possibility == 16
        add = 'alphabet\P.txt';
    elseif Possibility == 17
        add = 'alphabet\Q.txt';
    elseif Possibility == 18
        add = 'alphabet\R.txt';
    elseif Possibility == 19
        add = 'alphabet\S.txt';
    elseif Possibility == 20
        add = 'alphabet\T.txt';
    elseif Possibility == 21
        add = 'alphabet\U.txt';
    elseif Possibility == 22
        add = 'alphabet\V.txt';
    elseif Possibility == 23
        add = 'alphabet\W.txt';
    elseif Possibility == 24
        add = 'alphabet\X.txt';
    elseif Possibility == 25
        add = 'alphabet\Y.txt';
    else
        add = 'alphabet\Z.txt';
    end
    data = dlmread(add);
    cols = size(data,2);
    captcha( :  , cut : cut + cols - 1) = data;
    cut = cut + cols;
end
captcha = imnoise(captcha , 'salt & pepper' , 0.2);
imshow(captcha);


