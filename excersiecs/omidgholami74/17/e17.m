clc;
close all;
clear all;

image=imread("benchmark/mountain.png");
for j=1:640 %arze tasvir
    for i=1:150
     if 165<image(i,j)
         image(i,j)=0;
     end
     if image(i+1,j)<165
         break;
     end
    end
end
image=uint8(image);
figure;
imshow(image)