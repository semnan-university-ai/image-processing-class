clc;
close all;
clear;

alphabet(:,:,1) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\A.txt");
alphabet(:,:,2) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\B.txt");
alphabet(:,:,3) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\C.txt");
alphabet(:,:,4) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\D.txt");
alphabet(:,:,5) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\E.txt");
alphabet(:,:,6) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\F.txt");
alphabet(:,:,7) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\G.txt");
alphabet(:,:,8) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\H.txt");
alphabet(:,:,9) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\I.txt");
alphabet(:,:,10) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\J.txt");
alphabet(:,:,11) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\K.txt");
alphabet(:,:,12) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\L.txt");
alphabet(:,:,13) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\M.txt");
alphabet(:,:,14) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\N.txt");
alphabet(:,:,15) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\O.txt");
alphabet(:,:,16) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\P.txt");
alphabet(:,:,17) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\Q.txt");
alphabet(:,:,18) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\R.txt");
alphabet(:,:,19) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\S.txt");
alphabet(:,:,20) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\T.txt");
alphabet(:,:,21) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\U.txt");
alphabet(:,:,22) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\V.txt");
alphabet(:,:,23) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\W.txt");
alphabet(:,:,24) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\X.txt");
alphabet(:,:,25) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\Y.txt");
alphabet(:,:,26) = dlmread("..\excersiecs\arman-ariamehr\19\alphabet\Z.txt");
alphabet = uint8(alphabet);

alphabet_count = 4;
width = 500;
height = 200;

captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
captcha_alphabet = uint8(captcha_alphabet);

captcha_image = zeros(size(alphabet(:,:,1)));
captcha_image = alphabet(:,:,1);

for i = 2 : alphabet_count
    if captcha_alphabet(1,i) < 1
        captcha_alphabet(1,i) = 1;
    end
    if captcha_alphabet(1,i) > 26
        captcha_alphabet(1,i) = 26;
    end
	captcha_image = [ captcha_image alphabet(:,:,captcha_alphabet(1,i)) ];
end

captcha_image = imresize(captcha_image, [height width]);
imshow(im2bw(captcha_image, 0.3));

ocr(captcha_image)