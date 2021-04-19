clc;
close all;
clear all;
image = imread('../../../benchmark/airplane.png');
if size(image,3) == 3 
    image=rgb2gray(image);
end
% create the noise --------------------------------------------------------
imageNoisy = image;
a = 0.05; % 5% pixels altered
b = 0.5; % 50% percent white pixels among all altered pixels
n = numel(imageNoisy(:,:));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
imageNoisy(idx1) = 255;
imageNoisy(idx2) = 0;
imshow(imageNoisy);
%imsave;
% the mean(average)filter and median filter combined-------------------------------------------------
imageNoisySize = size(imageNoisy);
height = imageNoisySize(1,1);
width = imageNoisySize(1,2);
imageNoisyResultMean = zeros(height, width);
imageNoisyResultMedian = zeros(height, width);
% mean window filter
%UP LEFT
sum = [ imageNoisy(1, 1) imageNoisy(1, 2) imageNoisy(2, 1) imageNoisy(2, 2)];
imageNoisyResultMean(1, 1) = uint8(round(mean(sum)));
sum = sort(sum);
imageNoisyResultMedian(1, 1) = uint8(sum(2));
%DOWN LEFT
sum = [ imageNoisy(height-1, 1) imageNoisy(height-1, 2) imageNoisy(height, 1) imageNoisy(height-1, 2)];
imageNoisyResultMean(height, 1) = uint8(round(mean(sum)));
sum = sort(sum);
imageNoisyResultMedian(height, 1) = uint8(sum(2)); 
%UP RIGHT
sum = [ imageNoisy(1, width-1) imageNoisy(1, width) imageNoisy(2, width-1) imageNoisy(2, width)];
imageNoisyResultMean(1, width) = uint8(round(mean(sum)));
sum = sort(sum);
imageNoisyResultMedian(1, width) = uint8(sum(2)); 
%DOWN RIGHT
sum = [ imageNoisy(height-1, width-1) imageNoisy(height-1, width) imageNoisy(height, width-1) imageNoisy(height, width)];
imageNoisyResultMean(1, width) = uint8(round(mean(sum)));
sum = sort(sum);
imageNoisyResultMedian(1, width) = uint8(sum(2));
%Horizontal
for j = 2:width-1
    %UP
    sum = [ imageNoisy(1, j-1) imageNoisy(1, j) imageNoisy(1, j+1) imageNoisy(2, j-1) imageNoisy(2, j) imageNoisy(2, j+1)];
        %Mean
        imageNoisyResultMean(1, j) = uint8(round(mean(sum)));
        %Median
        sum = sort(sum);
        imageNoisyResultMedian(1, j) = uint8(sum(3));
    % DOWN
    sum = [ imageNoisy(height-1, j-1) imageNoisy(height-1, j) imageNoisy(height-1, j+1) imageNoisy(height, j-1) imageNoisy(height, j) imageNoisy(height-1, j+1)];
        %Mean
        imageNoisyResultMean(height, j) = uint8(round(mean(sum)));
        %Median
        sum = sort(sum);
        imageNoisyResultMedian(height, j) = uint8(sum(3));    
end
%Vertical
for i = 2:height-1
    %LEFT        
    sum = [ imageNoisy(i-1, 1) imageNoisy(i-1, 2) imageNoisy(i, 1) imageNoisy(i-1, 2) imageNoisy(i+1, 1) imageNoisy(i+1, 2)];
        %Mean
        imageNoisyResultMean(i, 1) = uint8(round(mean(sum)));
        %Median
        sum = sort(sum);
        imageNoisyResultMedian(i, 1) = uint8(sum(3));
    %RIGHT
    sum = [ imageNoisy(i-1, width-1) imageNoisy(i-1, width) imageNoisy(i, width-1) imageNoisy(i, width) imageNoisy(i+1, width-1) imageNoisy(i+1, width)];
        %Mean
        imageNoisyResultMean(i, width) = uint8(round(mean(sum)));
        %Median
        sum = sort(sum);
        imageNoisyResultMedian(i, width) = uint8(sum(3));    
end
%Internal
for i = 2:height-1
   for j= 2:width-1      
       sum = [ imageNoisy(i-1, j-1) imageNoisy(i-1, j) imageNoisy(i-1, j+1) imageNoisy(i, j-1) imageNoisy(i, j) imageNoisy(i-1, j+1) imageNoisy(i+1, j-1) imageNoisy(i+1, j) imageNoisy(i+1, j+1)]; 
           %Mean
           imageNoisyResultMean(i, j) = uint8(round(mean(sum)));
           %Median
           sum = sort(sum);
           imageNoisyResultMedian(i, j) = uint8(sum(5));
        
   end
end
figure,imshow(uint8(imageNoisyResultMean));
%imsave;
figure,imshow(uint8(imageNoisyResultMedian));
%imsave;
imageNoisy=double(imageNoisy);
sumNoisy = 0;
sumMean = 0;
sumMedian = 0;
for i=1:height
    for j=1:width
        sumNoisy=sumNoisy+imageNoisy(i,j);
        sumMean=sumMean+imageNoisyResultMean(i,j);
        sumMedian=sumMedian+imageNoisyResultMedian(i,j);     
    end
end
numberOfPixels=height*width;
N = sumNoisy / numberOfPixels ;
ME = sumMean / numberOfPixels ;
MED = sumMedian / numberOfPixels ;
disp("Noisy : "+round(N)+", Mean : "+round(ME)+", Median : "+round(MED));

