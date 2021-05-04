clc;
close all;
clear;

salt_percent = 10;

image = imread("../../../benchmark/airplane.png");
image = imresize(image, [300 300]);


grayImg = rgb2gray(image);


[rows, cols, numberOfColorChannels] = size(grayImg);

r = randi([1 rows*cols],1,(salt_percent/100)*rows*cols);

z=0;
for i = 1 : 1 : rows
   for j = 1 : 1 : cols 
    
       
       if ismember(((i*cols) + j), r)
           if z == 0
               grayImg(i:i, j:j) = 255;
               z=1;
           else
               grayImg(i:i, j:j) = 0;
               z=0;
           end
       end
            
           
       
   end
end

imshow(grayImg);
