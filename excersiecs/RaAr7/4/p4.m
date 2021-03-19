clc
close all
clear all

s = ones(500);

fileFolder = fullfile(matlabroot,'bin','img');
imds = imageDatastore(fileFolder,'FileExtensions',{'.tif','.png','.bmp'});


s = imtile(imds);

imshow(s);