clc;clear;close all;

img=imread("../../../benchmark/baboon.png");
subplot(1,2,1),imshow(img),title('Orginal');

R = img(:, :, 1);G = img(:, :, 2);B = img(:, :, 3);
[sr,sc,sz] = size(img);

gryimg = zeros(sr, sc, 'uint8');

for x=1:sr
   for y=1:sc
       %0.2989 * R + 0.5870 * G + 0.1140 * B
       gryimg(x,y) = (R(x,y)*.29)+(G(x,y)*.59)+(B(x,y)*.11);
   end
end

subplot(1,2,2),imshow(gryimg),title('rgb2gray');