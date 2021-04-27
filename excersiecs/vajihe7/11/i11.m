clc;
clear;
close ;
image1=rgb2gray(imread("peppers.png"));
image2=image1
for i=1:5000
    X=randi([1,size(image2,1)]);
    Y=randi([1,size(image2,2)]);
    image2(X,Y)=randi([0,1])*255;
end
figure;
imshow(image1);
figure;
imshow(image2);