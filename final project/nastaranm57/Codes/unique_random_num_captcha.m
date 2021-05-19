function captcha_alphabet = unique_random_num_captcha(alphabet_count, image_count)
captcha_alphabet = [randperm(image_count,alphabet_count)];
captcha_alphabet = uint8(captcha_alphabet);
end