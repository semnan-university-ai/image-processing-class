function image_rotated = rotate(img)
    deg =randi(100);
    temp=zeros(36,36);
    temp=uint8(temp);
    captcha_image_rotated=imrotate(img,deg)
    [w,h]=size(captcha_image_rotated);
    temp(1:w,1:h) = captcha_image_rotated;
    image_rotated= temp
end

