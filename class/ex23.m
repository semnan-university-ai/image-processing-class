clc;
close all;
clear;

image = imread("../benchmark/fruits.png");

hist(image(:,:,1));
hist(image(:,:,2));
hist(image(:,:,3));