clc;
close all;
clear;

alphabet=read_letter();
for j =1:150

alphabet_count =randi([4 6]);
width = randi([250 500]);
height = randi([200 300]);

captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8') ];
captcha_alphabet = uint8(captcha_alphabet);

captcha_image = zeros(size(alphabet(:,:,1)));


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
captcha_image = imnoise(captcha_image,'gaussian',0,0.025);
 
captcha_image=noise(captcha_image,0.9);
captcha_image=rotate(captcha_image);
figure;
imshow(im2bw(captcha_image, 0.3));
ocr(captcha_image)
end

SaveCaptcha();
