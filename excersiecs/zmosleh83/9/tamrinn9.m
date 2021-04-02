close all
clear all
clc


a = input('Enter a : ');
b = input('Enter b : ');


image = imread("C:\SemnanClass\9902\TA\Benchmark\airplane.png");
CropImage = imcrop(image,[a b a b]);


imshow(CropImage); 
