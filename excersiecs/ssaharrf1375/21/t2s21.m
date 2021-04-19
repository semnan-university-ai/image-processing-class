clc;
clear;
close all;

image=imread("C:\Program Files\Polyspace\R2019b\bin\img\pool.png");
subplot(2,1,1);
imshow(image);
img=image;
[x_size,y_size,z_size]=size(image);

for i= 1:x_size
    for j =1:y_size
        for k=1:z_size
            img(i,j,k)=fix(image(i,j,k)/50)*100;
        end
    end
end

subplot(2,1,2); imshow(img);