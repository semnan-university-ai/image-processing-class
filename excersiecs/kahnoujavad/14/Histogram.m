clc;
clear all;
close all;

for i=1:9
    image=imread(strcat("Resource\image",int2str(i),".png"));
    image=rgb2gray(image);
    subplot(4,6,i*2-1),imshow(image),title(strcat('image',int2str(i)));
    subplot(4,6,i*2),imhist(image),title(strcat('histogram',int2str(i)));
end