clc;clear;close all;

img=(imread("../../../benchmark/watch.png"));
imggray=rgb2gray(img);
subplot(1,2,1),imshow(img),title('Orginal');
[sr,sc,sz] = size(img);

R = img(:, :, 1);G = img(:, :, 2);B = img(:, :, 3);

for x=1:sr
   for y=1:sc
       if (R(x,y)< 100) &&(R(x,y)> 81) && (abs((G(x,y)-B(x,y)))< 2) 
            imggray(x,y) = 255;
            img(x,y,1) = 255;img(x,y,2) = 255;img(x,y,3) = 255;
       end
   end
end

subplot(2,2,2),imshow(imggray),title('Gray');
subplot(2,2,4),imshow(img),title('Color');