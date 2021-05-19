function captcha_image = noise(captcha_image)
captcha_image = imnoise(captcha_image , 'salt & pepper' , 0.05);
end

