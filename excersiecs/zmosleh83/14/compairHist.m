clc;clear;close all;

for n=1:12
    img=imread(strcat('resource\image',int2str(n),'.png'));
    img=rgb2gray(img);
    subplot(4,6,n*2-1),imshow(img),title(strcat('image',int2str(n)));
    subplot(4,6,n*2),imhist(img),title(strcat('histogram',int2str(n)));
end