clc;
close all;
clear all;

List =dir('*.png');

for i =1:4
        name =List(i).name;
        image=imread(name);
        image=rgb2gray(image);
        figure;
        imhist(image);
        
end