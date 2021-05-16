clear all         

clc

clear;

pic = imread('d:\benchmark\girl.png');    

figure,imshow(pic);           

x= pic (:,:,3);      

pic (:,:,3)=pic (:,:,1);      


pic (:,:,1)=x;                

figure;

imshow(pic);


