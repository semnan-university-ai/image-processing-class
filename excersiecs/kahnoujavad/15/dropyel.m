clc;
clear all;
close all;
image = imread("D:/image-processing-class/benchmark/pool.PNG");
subplot(2,2,1),imshow(image),title('rgb orginal');
gray = rgb2gray(image);
subplot(2,2,2),imshow(gray),title('gray orginal');

for i=230:350
    for j=350:470
        gray(i,j)=gray(i-1,j);
    end
end
gray=uint8(gray);
subplot(2,2,3),imshow(gray),title('gray drop');