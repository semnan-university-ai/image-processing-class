close all;
clear all;
clc;

picp = imread("pool.png");
picw = imread("watch.png");
picp=imresize(picp,[512,512]);
picw=imresize(picw ,[512,512]);
picP(:,:,1) = picw(:,:,1) ;
picP(:,:,2) = picp(:,:,2) ;
picP(:,:,3) = picp(:,:,3) ;
picW(:,:,1) = picp(:,:,1);
picW(:,:,2) = picw(:,:,2);
picW(:,:,3) = picw(:,:,3);

figure,imshow(picP);
figure,imshow(picW);
