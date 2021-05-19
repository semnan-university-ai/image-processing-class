function NR_captcha_image_r = Filter_Captcah_Image(height, width, alphabet_count, method, captcha_image_r,Filter_size)
Captcha_image = zeros(height+50, width+(alphabet_count*50));
slice_image = width/alphabet_count;
X=0;
for i=1:alphabet_count
    if rem(i,2)==0
        angle = 9;
    else
        angle = -10;
    end
    Captcha_image(25:height+24,((slice_image*i)-(slice_image-1))+X:(slice_image*i)+X) = imrotate(captcha_image_r(:,(slice_image*i)-(slice_image-1):slice_image*i),-(i+angle),'crop', method{1});
    X = X+50;
end

Captcha_image = uint8(Captcha_image);

NR_captcha_image_r = imgaussfilt(Captcha_image,4);

% NR_captcha_image_r = medfilt2(NR_captcha_image_r,[Filter_size,Filter_size]);
% NR_captcha_image_r = medfilt2(NR_captcha_image_r,[Filter_size-4,Filter_size-4]);
% NR_captcha_image_r = medfilt2(NR_captcha_image_r,[5,5]);
end