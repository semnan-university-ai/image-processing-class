clc;
clear;
close all;

image = imread('monarch.png');
sizePic= size(image);
result=image;

for j=1 : sizePic(1)
    for i=1 : sizePic(2)
        for k = 1 : 3
            result(j,i,k)=fix(image(j,i,k)/51)*51;
        end
    end
end

subplot(1,2,1); imshow(image);
subplot(1,2,2);imshow(result);