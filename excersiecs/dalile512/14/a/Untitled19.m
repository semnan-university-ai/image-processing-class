clc;
close all;
clear all;

imageList =dir('b/*.jpg');

for k =1:9
        n=imageList(k).name;
        image=imread(n);
        image=rgb2gray(image);
        subplot(6,2,k)
        imhist(image);
        
end