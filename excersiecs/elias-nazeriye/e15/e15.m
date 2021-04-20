close all;
clear all;
clc;

pic1=imread('pool.png');
pic2=rgb2gray(pic1);
pic1=rgb2gray(pic1);

for i= 230:330
    for j=360:460
        pic2(i,j) = 48; 
    end
end

subplot(1,2,1), imshow(pic1);title('main pic')
subplot(1,2,2), imshow(pic2);title('edited pic')