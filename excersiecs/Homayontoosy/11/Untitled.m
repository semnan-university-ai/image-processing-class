clc;
clear all;
close all;
% khandan tasvir 
image1=imread('d:\11\street.jpg');

% tabdil tasvir be khakestari
image1=rgb2gray(image1);

% pixel siah dark
dark=0;   

% pixel sefid white
white=255;  

picnoise= image1; 

[length,width]=size(image1); 

z=randint(length,width,[0,255]);


picnoise(z <= dark) = 0;  
picnoise(z >=white) = 255;
% matris rand barabar ba pictur asli

imshow(picnoise);















