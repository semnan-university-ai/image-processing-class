clc;
close all;
clear;

img = ones(500, 500, 3,'uint8');
for i=1:25
  image = imread("benchmark/peppers.png");
   if size(image,3) ==3
            image=rgb2gray(image);
  end
   [sx,sy,sz]=size(image);
   imgcut=image(sx-100:sx,sy-100:sy,:);
   if sz==1
       imgcut=cat(3,imgcut,imgcut,imgcut);
   end
   mo=mod(i-1,5)*100;di=fix((i-1)/5)*100;
   img(di+1:di+101,mo+1:mo+101,:)=imgcut(1:101,1:101,:);
end
imshow(img);
