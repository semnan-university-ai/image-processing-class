clc;
close all;
clear;
pic=imread('d:\tamrin\3\yas.jpg');
figure;
imshow(pic);
R = pic(:, :, 1);G = pic(:, :, 2);B = pic(:, :, 3);
[sr,sc,sz] = size(pic);
gry = zeros(sr, sc, 'uint8');
for i=1:sr
   for j=1:sc
       gry(i,j) = (R(i,j)*.29)+(G(i,j)*.59)+(B(i,j)*.11);
   end
end
figure;
imshow(gry);