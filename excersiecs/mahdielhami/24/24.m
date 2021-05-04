clc;
close all;
clear all;
img3 = imread("img/pool.png");
img = imread("img/watch.png");
img3=imresize(img3,[512,512]);
img=imresize(img ,[512,512]);
imgp(:,:,1) = img(:,:,1) ;
imgp(:,:,2) = img3(:,:,2) ;
imgp(:,:,3) = img3(:,:,3) ;
imgw(:,:,1) = img3(:,:,1);
imgw(:,:,2) = img(:,:,2);
imgw(:,:,3) = img(:,:,3);
figure,imshow(imgp)
figure,imshow(imgw);
