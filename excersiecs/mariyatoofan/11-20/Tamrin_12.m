% Tamrin 12
close all
clear all
clc
 I = imread('1.jpg');
      J = rgb2gray(I);
      p3= 0;
      p4 = 0.05;
      J = im2double(J);
      b = J + sqrt(p4)*randn(size(J)) + p3;
  subplot(131)
  imshow(I)
  title('Original Image')
  subplot(132)
  imshow(b)
  title('adding Salt-Pepper Noise')
  [m,n] =size(b);
  output = zeros(m,n);
  %output = uint8(output);
  for i=1:m
      for j= 1: n
      xmin= max(1,i-1);                   % find max
      xmax= min(m,i+1);                   % find min 
      ymin= max(1,j-1);                   % find y min 
      ymax= min(n,j+1);                   % find y max
      temp= b(xmin:xmax, ymin:ymax);      % create temporary 
      output(i,j)= median(temp(:));       % median filter
      end
  end
  subplot(133)
 imshow(output)
 title('Removing Salt-pepper noise')
 
%---
Kaverage = filter2(fspecial('average',3),b)/255;       % average filter
figure
imshow(Kaverage)             % show average
Kmedian = medfilt2(b);       %  2-D median filtering
imshow(Kmedian)              % show image
title('Removing Salt-pepper noise')