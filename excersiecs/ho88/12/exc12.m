clc;
close all;
clear;

salt_percent = 10;

image = imread("../../../benchmark/airplane.png");
image = imresize(image, [300 300]);


grayImg = rgb2gray(image);


[rows, cols, numberOfColorChannels] = size(grayImg);

r = randi([1 rows*cols],1,(salt_percent/100)*rows*cols);
pepper_count = 0;
mean = 0;
median = 0;

z=0;
for i = 1 : 1 : rows
   for j = 1 : 1 : cols 
    
       
       if ismember(((i*cols) + j), r)
           if z == 0
               grayImg(i:i, j:j) = 255;
               z=1;
               pepper_count = pepper_count + 255;
           else
               grayImg(i:i, j:j) = 0;
               z=0;
           end
       else
           pepper_count = pepper_count + grayImg(i:i, j:j);
       end
            
           
       
   end
end

medImage = medfilt2(grayImg);

filterWindow = ones(3) / 9;
filteredImage = imfilter(grayImg, filterWindow);

subplot(221); imshow(grayImg); subplot(222); imshow(medImage); 
subplot(223); imshow(filteredImage);



% imshow(grayImg);
