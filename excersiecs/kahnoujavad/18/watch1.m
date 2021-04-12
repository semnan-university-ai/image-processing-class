clc;
clear all;
close all;
image = imread("D:/image-processing-class/benchmark/watch.png");
gray=rgb2gray(image);
subplot(2,2,1),imshow(image),title('rgb watch');
subplot(2,2,2),imshow(gray),title('gray watch');
[a,b]=size(gray);
R = image(:, :, 1);G = image(:, :, 2);B = image(:, :, 3);

for i=1:a
    for j=1:b
       if (R(i,j)< 100) &&(R(i,j)> 81) && (abs((G(i,j)-B(i,j)))< 2) 
            gray(i,j) = 255;
            image(i,j,1) = 255;
            image(i,j,2) = 255;
            image(i,j,3) = 255;
       end
   end
end
subplot(2,2,3),imshow(gray),title('Gray watch2');
subplot(2,2,4),imshow(image),title('Rgb watch2');

