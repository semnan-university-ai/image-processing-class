close all
clear all
clc

% ################## pic1###########################
 im=imread('benchmark/pool.png');
 im=imresize(im,[250,400]);
 im=rgb2gray(im); 
 figure
 imshow(im);
 title('Original image') 
 b=4;w=251;  %assuming our black pixel is having a value of '4' & the white one is '251'
 img_with_noise= im; 
 %preserving the original image 'i' & operating on a new variable
 [m,n]=size(im);
 x = randi([0,255],m,n);  
 %over a range of 0 to 255
 img_with_noise(x <= b) = 0;  
 img_with_noise(x >=w) = 255;  
 %this step will add the salt noise in the image
 figure
 imshow(img_with_noise)%Show the corrupted image
 title('Salt and pepper noise image')
 % ################## pic2###########################
 im1=imread('benchmark/monarch.png'); 
 im1=imresize(im1,[250,400]);
 im1=rgb2gray(im1); 
 figure
 imshow(im1);
 title('Original image') 
 b=4;w=251;  
 img_with_noise1= im1; 
 [m,n]=size(im1);
 x = randi([0,255],m,n);  
 img_with_noise1(x <= b) = 0;  
 img_with_noise1(x >=w) = 255;  
 figure
 imshow(img_with_noise1)
 title('Salt and pepper noise image')
 % ################## pic3###########################
 im2=imread('benchmark/watch.png');
 im2=imresize(im2,[250,400]);
 im2=rgb2gray(im2); 
 figure
 imshow(im2);
 title('Original image')
 b=4;w=251;  
 img_with_noise2= im2; 
 [m,n]=size(im2);
 x = randi([0,255],m,n);  
 img_with_noise2(x <= b) = 0;  
 img_with_noise2(x >=w) = 255;  
 figure
 imshow(img_with_noise2)
 title('Salt and pepper noise image')

