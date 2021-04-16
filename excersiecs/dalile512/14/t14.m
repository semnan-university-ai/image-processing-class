clc;
close all;
clear all;

pictures =dir('a/*.jpg');

for k =1:9
        pic=imageList(k).name;
        image=imread(pic);
        image=rgb2gray(image);
        subplot(3,3,k)
        imhist(image);
        
end