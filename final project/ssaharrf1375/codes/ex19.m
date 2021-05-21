clc;
close all;
clear;

address = 'C:\Program Files\Polyspace\R2019b\bin\prj\';
alph_count = 5;
wi = 512;
he = 256;

[img_name, img_count, alph] = Read_Alpha(address);
Consecutive_num = 1;
while Consecutive_num == 1
    cap_alph = RandomNum(alph_count, img_count);
    for r=1:alph_count-1
        if abs(cap_alph(r+1) - cap_alph(r)) == 1
            break
        else
            Consecutive_num = 0;
        end
    end
end

alph_size = size(alph(:,:,1));


method = {'nearest', 'bilinear', 'bicubic'};
MTD=3;
angle = 0;

cap_img_r = Create_Cap_Img(alph_count, cap_alph, img_count, alph, method, MTD, he, wi);

Noise = {'poisson', 'gaussian', 'salt & pepper', 'speckle'};
cap_img_r = imnoise(cap_img_r,Noise{3},.2);

LineWi = 1;

cap_img_r = LineDraw(cap_img_r, wi, he, LineWi);

Filter_size = 13;
filter_cap_img_r = Filter_Cap_Img(he, wi, alph_count, method, cap_img_r, Filter_size);

% filter_cap_img_r = imgaussfilt(filter_cap_img_r,2);
% filter_cap_img_r = imsharpen(filter_cap_img_r,'Radius',2,'Amount',1);

bw = .5;

figure(),
imshowpair(cap_img_r,im2bw(filter_cap_img_r, bw),'montage');

% txt = ocr(im2bw(filter_cap_img_r, bw));
