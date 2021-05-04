clc;
close all;
clear all;

img=rgb2gray(imread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\benchmark\pool.png'));
subplot(1,2,1),imshow(img);
[a,b] = size(img);
for x=1:a
   for y=1:b
       if ((img(x,y) > 50) || (img(x,y) < 48)) && (x >230) && (y >355)
            img(x,y) = 49;
            
       end
   end
end
subplot(1,2,2),imshow(img);