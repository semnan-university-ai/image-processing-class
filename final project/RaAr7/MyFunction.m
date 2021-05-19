function captcha_image = MyFunction(alphabet_count,width,height)
    alphabet = ReadAlphabet();
    captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
    captcha_alphabet = uint8(captcha_alphabet);

    captcha_image = zeros(size(alphabet(:,:,1)));
    captcha_image = alphabet(:,:,randi([1 26]));

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
end