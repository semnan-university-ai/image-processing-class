clc;
close all;
clear all;

image=imread('d:\benchmark/mountain.png');

% arz tasvir=640
for j=1:640 
    for i=1:160
     if 175<image(i,j)
         image(i,j)=0;
     end
     if image(i+1,j)<175
         break;
     end
    end
end


% unit8 ta 256 meghdar ra mitavanad dashte bashad
image=uint8(image);
figure;
imshow(image);