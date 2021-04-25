clc;clear;close all;

for i=1:12
    img=imread(strcat('resource\image',int2str(i),'.jpeg'));
    img=rgb2gray(img);
    subplot(4,6,i*2-1),imshow(img),title(strcat('image',int2str(i)));
    subplot(4,6,i*2),imhist(img),title(strcat('histogram',int2str(i)));
end
