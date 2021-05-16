clc;
close all;
clear;


image = imread("../../../benchmark/watch.png");
[rows, cols, chn] = size(image);
% image = imresize(image, [400 400]);

% image(round(rows/2)+50, round(cols/2),:) = 255;
% image(round(rows/2)+51, round(cols/2),:) = 255;
% image(round(rows/2)+52, round(cols/2),:) = 255;
% image(round(rows/2)+53, round(cols/2),:) = 255;
% image(round(rows/2)+54, round(cols/2),:) = 255;
% image(round(rows/2)+55, round(cols/2),:) = 255;
% image(round(rows/2)+56, round(cols/2),:) = 255;
% image(round(rows/2)+57, round(cols/2),:) = 255;
% 
% 
% image(round(rows/2)+50, round(cols/2)+175,:) = 255;
% image(round(rows/2)+51, round(cols/2)+175,:) = 255;
% image(round(rows/2)+52, round(cols/2)+175,:) = 255;
% image(round(rows/2)+53, round(cols/2)+175,:) = 255;
% image(round(rows/2)+54, round(cols/2)+175,:) = 255;
% image(round(rows/2)+55, round(cols/2)+175,:) = 255;
% image(round(rows/2)+56, round(cols/2)+175,:) = 255;
% image(round(rows/2)+57, round(cols/2)+175,:) = 255;

r = 165;
cx = round(cols/2);
cy = round(rows/2)+50;


for i = 1 : rows
    
    for j = 1 : cols
        
        if floor(sqrt(power(cx-j,2)+power(cy-i,2))) < r
            image(i,j,:) = 255;
        end
    
    end
    
end


imshow(image);