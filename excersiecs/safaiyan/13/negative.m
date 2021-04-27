clc;
close all;
clear all;

img = rgb2gray(imread('C:\Users\Nakisa�\Documents\GitHub\image-processing-class\benchmark\girl.png'));
[x,y]= size(img);
for i=1:x
    for j=1:y
        img(i,j) = 255 - img(i,j);
    end
end

imgnoise = imnoise(img,'salt & pepper',0.05);
subplot(2,2,1); imshow(imgnoise);
mean1 = round(mean(mean(imgnoise)));

imgnoise = imnoise(img,'salt & pepper',0.1);
subplot(2,2,2); imshow(imgnoise);
mean2 = round(mean(mean(imgnoise)));

imgnoise = imnoise(img,'salt & pepper',0.25);
subplot(2,2,3); imshow(imgnoise);
mean3 = round(mean(mean(imgnoise)));

imgnoise = imnoise(img,'salt & pepper',0.5);
subplot(2,2,4); imshow(imgnoise);
mean4 = round(mean(mean(imgnoise)));

Average ={mean1; mean2; mean3 ; mean4; };
Image = {'noise=0.05';'noise=0.1';'noise=0.25';'noise=0.5';};
handles.T=table(Image ,Average);
display(handles.T);
