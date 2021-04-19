clc;
clear data;
clear all;
image=imread('C:\Users\as\Downloads\pool.png');
image1=imread('C:\Users\as\Downloads\watch.png');
image=imresize(image,[200,200]);
image1=imresize(image1,[200,200]);
a=image(:,:,1);
b=image1(:,:,1);
image1(:,:,1)=a;
image(:,:,1)=b;
imshow(image)
figure;
imshow(image1);