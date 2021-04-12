clc;
clear all;
close all;
image = imread("D:/image-processing-class/benchmark/pool.PNG");
subplot(2,2,1),imshow(image),title('rgb orginal');
gray = rgb2gray(image);
subplot(2,2,2),imshow(gray),title('gray orginal');
[a,b]= size(gray);
for i=1:a
    for j=1:b
        if ((gray(i,j)<49) || ((gray(i,j)>50) && (i >220) && (j >350)
           gray(i,j) = 49;
           image(i,j,1) = 25;
           imageg(i,j,2) = 75;
           image(i,j,3) =25;
        end
    end
end
subplot(2,2,3),imshow(image),title('rgb new');
subplot(2,2,4),imshow(gray),title('gray new');
