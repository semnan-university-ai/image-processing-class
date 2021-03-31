clc;
close all;
clear all;

%imshow(x);
% gray = .299*redChannel + .587*greenChannel + .114*blueChannel
% % imshow(gray);
% t=my_im2bw(Ig,level);
%  imshow(t);
% Ig = rgb2gray(im2double(imread('lena.png')));
% level = 0.4;
% B1 = im2bw(Ig,level);
% B2 = myim(Ig,level);


 input=imread('lena.png');
subplot(1,2,1), imshow(input), title('RGB Scale image');
[x,y,~] = size(input);

for i = 1:1:x
   for j = 1:1:y
      output(i,j) = 0.40*input(i,j,1) + 0.50*input(i,j,2) + 0.30*input(i,j,3);
   end
end

subplot(1,2,2), imshow(output), title('Gray Scale  image');