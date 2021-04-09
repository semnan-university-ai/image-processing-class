clc;
clear all; 
close all;

imagepath = "../benchmark/";
pngf = dir(imagepath+'*.png');
tiff = dir(imagepath+'*.tif');
bmpf = dir(imagepath+'*.bmp');
imagef = [pngf;tiff;bmpf];

image = ones(500, 500, 3,'uint8');

for i=1:30
   cimage = imread(imagepath+imagef(i).name);
   [a,b,c]=size(cimage);
   imgdrup=cimage(a-100:a,b-100:b,:);
   if c==1
      imgdrup=cat(3,imgdrup,imgdrup,imgdrup);
   end
   modimg=mod(i-1,5)*100;di=fix((i-1)/5)*100;
   img(di+1:di+101, modimg+1: modimg+101,:)=imgdrup(1:101,1:101,:);
end
imshow(image);