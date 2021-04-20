clc;
close all;
clear all;

name=input("please Enter name of you picture : ",'s');
path = strcat('benchmark/',name,'.png');
image= imread(path);

redChannel   = image(:, :, 1);
greenChannel = image(:, :, 2);
blueChannel  = image(:, :, 3);

grayImage = .299*double(redChannel) +.587*double(greenChannel) + .114*double(blueChannel);
grayImage = uint8(grayImage);

imshow(grayImage)