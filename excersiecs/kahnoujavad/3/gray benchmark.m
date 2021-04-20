clc;
clear all;
close all;

image=imread("D:/image-processing-class/benchmark/boy.png");
subplot(1,2,1),imshow(image),title('Orginal');

R = image(:, :, 1);
G = image(:, :, 2);
B = image(:, :, 3);
[a,b,c] = size(image);

gryimage = zeros(a, b, 'uint8');

for x=1:a
   for y=1:b
      
       gryimage(x,y) = (R(x,y)*.29)+(G(x,y)*.59)+(B(x,y)*.11);
   end
end

subplot(1,2,2),imshow(gryimage),title('rgb2gray');