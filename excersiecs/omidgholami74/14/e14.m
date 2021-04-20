clc;
close all;
clear all;

imageList =dir('nature/*.png');

for k =1:12
        name =imageList(k).name;
        image=imread(name);
        image=rgb2gray(image);
        subplot(6,2,k)
        imhist(image);
        
end