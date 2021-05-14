function output = change_captcha(captcha , width , height )
    captcha = imresize(captcha, [height width]);
    
    captcha = imnoise(captcha , 'salt & pepper' , 0.05);

    output = captcha;
end

