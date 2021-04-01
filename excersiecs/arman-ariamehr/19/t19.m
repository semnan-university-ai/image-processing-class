captcha = zeros(25 , 125);
cut = 1;
for i = 1 : 5
    guess = randi([1 26]);
    if guess == 1
        add = 'alphabet\A.txt';
    elseif guess == 2
        add = 'alphabet\B.txt';
    elseif  guess == 3
        add = 'alphabet\C.txt';
    elseif  guess == 4
        add = 'alphabet\D.txt';
    elseif  guess == 5
        add = 'alphabet\E.txt';
    elseif  guess == 6
        add = 'alphabet\F.txt';
    elseif  guess == 7
        add = 'alphabet\G.txt';
    elseif  guess == 8
        add = 'alphabet\H.txt';
    elseif  guess == 9
        add = 'alphabet\I.txt';
    elseif guess == 10
        add = 'alphabet\J.txt';
    elseif guess == 11
        add = 'alphabet\K.txt';
    elseif guess == 12
        add = 'alphabet\L.txt';
    elseif guess == 13
        add = 'alphabet\M.txt';
    elseif guess == 14
        add = 'alphabet\N.txt';
    elseif guess == 15
        add = 'alphabet\O.txt';
    elseif guess == 16
        add = 'alphabet\P.txt';
    elseif guess == 17
        add = 'alphabet\Q.txt';
    elseif guess == 18
        add = 'alphabet\R.txt';
    elseif guess == 19
        add = 'alphabet\S.txt';
    elseif guess == 20
        add = 'alphabet\T.txt';
    elseif guess == 21
        add = 'alphabet\U.txt';
    elseif guess == 22
        add = 'alphabet\V.txt';
    elseif guess == 23
        add = 'alphabet\W.txt';
    elseif guess == 24
        add = 'alphabet\X.txt';
    elseif guess == 25
        add = 'alphabet\Y.txt';
    else
        add = 'alphabet\Z.txt';
    end
    data = dlmread(add);
    cols = size(data,2);
    captcha( :  , cut : cut + cols - 1) = data;
    cut = cut + cols;
end
captcha = imnoise(captcha , 'salt & pepper' , 0.1);
imshow(captcha);