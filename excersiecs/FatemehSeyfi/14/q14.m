clc;
clear;
close all;
m=1;
for n=1:12
        images=imread("images/"+int2str(n)+".jpeg");  %پوشه تصویرمان که images   هست با کمک حلقه for هر 12 تا تصویرمان به ترتیب خوانده می شود.
        image=rgb2gray(images);  %تصاویر خاکستری می شوند.
        subplot(4,6,m)
        imshow(image);          % نمایش عکس ها
        title("Image "+int2str(n));
        subplot(4,6,m+1)
        imhist(image);        % نمایش هیستوگرام عکس ها
        title("Histogram "+int2str(n));
        m=m+2;  
end
