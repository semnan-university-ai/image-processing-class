clc;
close all;
clear;

h = 100;
w = 100;
H = 500;
W = 500;

image = imread("../../benchmark/girl.png");
% image = imresize(image, [300 300]);
cr = cropImage(image, H, W, h, w);
imshow(cr);


function [cropped] = cropImage(rgbImage, H, W, h, w)

  [rows, columns, numberOfColorChannels] = size(rgbImage);
  
  start_row = rows - h;
  start_col = columns - w;
  
%   cropped = ones(H, W, 3);
%   cropped = rgbImage(100,100,3);
  i = 0;
  
  start_draw_h = floor(H/2)-floor(h/2);
  start_draw_w = floor(W/2)-floor(w/2);
  
  
    for m=start_row: 1 : rows 
      j = 0;
      for n=start_col : 1 : columns

          cropped(start_draw_h+i, ... 
          start_draw_w+j, 1) = rgbImage(m:m, n:n, 1);

          cropped(start_draw_h+i, ... 
          start_draw_w+j, 2) = rgbImage(m:m, n:n, 2);

          cropped(start_draw_h+i, ... 
          start_draw_w+j, 3) = rgbImage(m:m, n:n, 3);

          j = j + 1;
      end
      i = i + 1;
    end

end