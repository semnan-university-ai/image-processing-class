clc;
clear;
close all;
img1 = imread("img/airplane.png");
imagesize=size(img1);
     for i = 1:imagesize(1)
        for j=1:imagesize(2)
            img2(i,j) = 0.33*(img1(i, j, 1)) + 0.33*(img1(i, j, 2)) + 0.33*(img1(i, j, 3));
        end
     end
    subplot(1,2,1),imshow(img1);
    subplot(1,2,2),imshow(img2);
    بعد از دریافت عکس و بدست آوردن اندازه عکس هر کانال تصویر رو به صورت جداگانه ضرب در 0.33 نموده و در انتها تصویر را نمایش می دهیم.
