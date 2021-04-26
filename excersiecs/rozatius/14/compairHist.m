clc;clear;close all;

for n=1:12
    img=imread(strcat('resourceMain\image',int2str(n),'.jpg'));
    img=rgb2gray(img);
    subplot(4,6,n*2-1),imshow(img),title(strcat('image',int2str(n)));
    subplot(4,6,n*2),imhist(img),title(strcat('histogram',int2str(n)));
end
