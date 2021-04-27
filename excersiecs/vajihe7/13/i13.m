clc;
clear;
img = imread('cameraman.tif');

imagesize=size(img);
for i=1:imagesize(1,1)
    for j=1:imagesize(1,2)
        img(i,j)=255-img(i,j);
    end 
end
imshow(img);
image1=imnoise(img,'salt & pepper',0.02);
image2=imnoise(img,'salt & pepper',0.35);
image3=imnoise(img,'salt & pepper',0.55);
image4=imnoise(img,'salt & pepper',0.75);

 S=zeros(1,4);
 S(1,1) =round(mean(mean(image1)));

 S(1,2) =round(mean(mean(image2)));

 S(1,3) =round(mean(mean(image3)));

 S(1,4) =round(mean(mean(image4)));

 disp(S);