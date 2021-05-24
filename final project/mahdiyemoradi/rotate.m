function image_rotat = rotate(image)
    deg =randi(90);
    temp=zeros(25,25);
    temp=uint8(temp);
    captcha_rotat=imrotate(image,deg);
    [width,height]=size(captcha_rotat);
    temp(1:width,1:height) = captcha_rotat;
    image_rotat= temp;
end