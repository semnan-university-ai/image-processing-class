clc;
close all;
clear all;

image =imread('C:\Program Files\Polyspace\R2019b\bin\img\mountain.png');
% imshow(image);

for j=1:640   %tool
    for i=1:148    %arz
        if 150<image(i,j)
            image(i,j)=0;
        end
        if 150>image(i+1,j)
            break;
        end
    end
end
image=uint8(image);
figure;
imshow(image);