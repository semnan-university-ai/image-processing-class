clc;
clear;
close all;

pic1 = imread('C:\Program Files\Polyspace\R2019b\bin\img\watch.png');
pic2 = imread('C:\Program Files\Polyspace\R2019b\bin\img\pool.png');

subplot(2,2,1); imshow(pic1);
subplot(2,2,3); imshow(pic2);

sizePic1= size(pic1);
sizePic2= size(pic2);

if sizePic1(1)> sizePic2(1)
    pic2=imresize(pic2,[sizePic1(1),sizePic1(2)]);
else
    pic1=imresize(pic1,[sizePic2(1),sizePic2(2)]);
end 

tempImage= pic1(:,:,1);
pic1(:,:,1) = pic2(:,:,1);
pic2(:,:,1)=tempImage;

subplot(2,2,2); imshow(pic1);
subplot(2,2,4); imshow(pic2);