clc;
close all;
clear all;

imageList =dir('C:\Program Files\Polyspace\R2019b\bin\image\*.png');

for s =1:5
        name =imageList(s).name;
        image=imread(name);
        image=rgb2gray(image);
        subplot(2,3,s)
        imhist(image); 
end
