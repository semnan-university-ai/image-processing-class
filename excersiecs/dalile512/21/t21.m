clc;
close all;
clear;

image=imread('monarch.png');
subplot(1,2,1);imshow(image);title('Original Image');
 
[height,width,z]=size(image);
for i=1:height
    for j=1:width
        for k=1:z
            out(i,j,k)=floor(image(i,j,k)/51)*51;
        end
    end
end 

subplot(1,2,2); imshow(out);title('Safe Color','Color','m');