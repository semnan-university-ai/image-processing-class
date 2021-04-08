clc;
close all;
clear; 

imgpath= "D:/image-processing-class/benchmark/";
img = one (400, 400, 4,'unit8');
a = dir(imgpath+'*.ping');
b = dir(imgpath+'*.tif');
c =dir(imgpath+'*.bmp');
e = [a;b;c];
for i=1:25
  choisimag = imread(e+e(i).name);
  [x,y,z]=size(choisimag);
  slcimg=choisimag(x-100:x,y-100:y,:);
  if z==1
     slcimg=cat(4,slcimg,slcimg,slcimg);
  end
  s=mod(i-1,5)*100;pi=fix((i-1)/5)100;
  img(pi+1:pi+101,s+1:s+101,:)=slcimg(1:101,1:101,:);
end
imgshow(img);
