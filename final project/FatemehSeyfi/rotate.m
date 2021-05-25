
function captcha_image = rotate(captcha_image )

rand_angle = randi([-30 30]);
captcha_image = imrotate(captcha_image , rand_angle,'bilinear','crop');
% alphabet = uint8(captcha_image);
end



