clc;
close all;
clear;

address = 'C:/Users/kam/Desktop/New folder (4)/';

alphabet_count = 4;
width = 512;
height = 256;

[image_name, image_count, alphabet] = Read_Alphabet(address);

Consecutive_numbers = 1;
while Consecutive_numbers == 1
    captcha_alphabet = unique_random_num_captcha(alphabet_count, image_count);
    for r=1:alphabet_count-1
        if abs(captcha_alphabet(r+1) - captcha_alphabet(r)) == 1
            break
        else
            Consecutive_numbers = 0;
        end
    end
end


alphabet_size = size(alphabet(:,:,1));


method = {'nearest', 'bilinear', 'bicubic'};
MTD=3;
angle = 0;

captcha_image_r = Create_Captcha_Image(alphabet_count, captcha_alphabet, image_count, alphabet, method, MTD, height, width);

Noise = {'poisson', 'gaussian', 'salt & pepper', 'speckle'};
captcha_image_r = imnoise(captcha_image_r,Noise{3},.2);

LineWidth = 1;

captcha_image_r = Line_Draw(captcha_image_r, width, height, LineWidth);

Filter_size = 13;
NR_captcha_image_r = Filter_Captcah_Image(height, width, alphabet_count, method, captcha_image_r, Filter_size);

% NR_captcha_image_r = imgaussfilt(NR_captcha_image_r,2);
% NR_captcha_image_r = imsharpen(NR_captcha_image_r,'Radius',2,'Amount',1);

bw = .5;

figure()
imshow(NR_captcha_image_r)

figure()
imshowpair(captcha_image_r,im2bw(NR_captcha_image_r, bw),'montage')

txt = ocr(im2bw(NR_captcha_image_r, bw))

figure()
img = im2bw(NR_captcha_image_r, bw);
imshow(img)
