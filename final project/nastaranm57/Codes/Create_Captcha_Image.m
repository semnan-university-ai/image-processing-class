function captcha_image_r = Create_Captcha_Image(alphabet_count, captcha_alphabet, image_count, alphabet, method, MTD, height, width)

captcha_image_r = zeros(25,25*alphabet_count);

for i = 1 : alphabet_count
    if captcha_alphabet(1,i) < 1
        captcha_alphabet(1,i) = 1;
    end
    if captcha_alphabet(1,i) > image_count
        captcha_alphabet(1,i) = image_count;
    end
    
    if rem(i,2) == 0
        angle = 9;
    else
        angle = -10;
    end
    captcha_image_r(:,(25*i)-24:25*i) = imrotate(alphabet(:,:,captcha_alphabet(1,i)),i+angle,'crop',method{MTD});
end

captcha_image_r = uint8(captcha_image_r);

captcha_image_r = imresize(captcha_image_r, [height width]);
end