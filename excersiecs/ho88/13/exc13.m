clc;
close all;
clear;

% num_image = 8;

image = imread("../../../benchmark/lena.png");
image = imresize(image, [300 300]);

grayImg = rgb2gray(image);



[rows, cols, numberOfColorChannels] = size(grayImg);



negImage = 255 - grayImg(:,:,:);
salt_arr = [0, 10, 20, 30, 50, 60];
avg = [];
rownames = strings(1,100);
for n=1:length(salt_arr)
    
   sum = 0;
   r = randi([1 rows*cols],1,(salt_arr(n)/100)*rows*cols);
    for i = 1 : rows
       for j = 1 : cols 


           if ismember(((i*cols) + j), r)
   
               negImage(i:i, j:j) = 255*randi([0,1]);
           end
           
           sum = sum + double(negImage(i, j));
           
       end
    end
    
    avg(n,1) = sum / (rows*cols);
    rownames(1,n) = strcat('image ', int2str(n));
    subplot(2, fix((length(salt_arr)/2)), n); imshow(negImage);title(rownames(n));
end
    
figure;
% 
col_names = { 'Average Values '};

table = uitable( 'Data', avg, 'columnname', col_names, 'rowname', rownames);



% subplot(221);imshow(image); subplot(222);imshow(grayImg);
% subplot(223);imshow(negImage);


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
% 
% medImage = medfilt2(grayImg);
% 
% filterWindow = ones(3) / 9;
% filteredImage = imfilter(grayImg, filterWindow);
% 
% subplot(221); imshow(grayImg); title('Adding noise'); subplot(222); imshow(medImage); title('median filtered') 
% subplot(223); imshow(filteredImage); title('Mean filtered');



% imshow(grayImg);
