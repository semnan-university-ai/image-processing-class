clc;
close all;
clear all;

pictures =dir('b/*.jpg');

for k =1:9
        pic=imageList(k).name;
        image=imread(pic);
        image=rgb2gray(image);
        subplot(6,2,k)
        imhist(image);
        
end