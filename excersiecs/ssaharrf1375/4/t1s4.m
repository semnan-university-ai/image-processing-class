clc;
close all;
clear;

imagepath = "C:\Program Files\Polyspace\R2019b\bin\img";
image = ones(500, 500, 3,'uint8');
pngf = dir(imagepath+'*.png');
tiff = dir(imagepath+'*.tif');
bmpf = dir(imagepath+'*.bmp');
imagefiles = [pngf;tiff;bmpf];
for i=1:25
   cimage = imread(imagepath+imagefiles(i).name);
   [x_size,y_size,z_size]=size(cimage);
   image_cut=cimage(x_size-100:x_size,y_size-100:y_size,:);
   if z_size==1
       image_cut=cat(3,image_cut,image_cut,image_cut);
   end
   m=mood(i-1,5)*100;di=fix((i-1)/5)*100;
   image(di+1:di+101,m+1:m+101,:)=image_cut(1:101,1:101,:);
end
imshow(image);