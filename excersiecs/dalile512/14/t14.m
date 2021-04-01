clc;
close all;
clear all;

imageList =dir('a/*.jpg');

for k =1:9
        n=imageList(k).name;
        image=imread(n);
        image=rgb2gray(image);
        subplot(3,3,k)
        imhist(image);
        
end