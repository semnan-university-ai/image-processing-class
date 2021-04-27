clc;
clear;
close all;

image = imread("text.png");
image = rgb2gray(image);

ocr(image)