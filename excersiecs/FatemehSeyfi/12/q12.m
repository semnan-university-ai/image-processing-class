clc;
close all;
clear all;
im=imread('benchmark/pool.png');
 im=imresize(im,[250,400]);
 im=rgb2gray(im);
 [m,n]=size(im);
 image_Noise =with_noise(im);
 image_Mean  =with_Mean(im);
 image_Median=with_Median(im);
 imn_sum = [] ; imm_sum = [] ; immed_sum = [];

for i=1:m
    for j=1:n
        imn_sum = [imn_sum ; image_Noise(i,j)];
        imm_sum = [imm_sum ; image_Mean(i,j)];
        immed_sum = [immed_sum ; image_Median(i,j)];
    end 
end

imn_avg = mean(imn_sum);
imm_avg = mean(imm_sum);
immed_avg = mean(immed_sum);

subplot(1,3,1);
imshow(image_Noise);
title(imn_avg)
subplot(1,3,2);
imshow(image_Mean);
title(imm_avg)
subplot(1,3,3);
imshow(image_Median);
title(immed_avg)

function [img_with_noise]=with_noise(im)
    
     [m,n]=size(im);
     b=4;w=251;  
     img_with_noise= im; 
     
     x = randi([0,255],m,n);  
     img_with_noise(x <= b) = 0;  
     img_with_noise(x >=w) = 255;

  
end
function [image_result] = with_Mean(im)
    image = with_noise(im);
    sum = 0;
    image_size = size(image);
    image_result = zeros(image_size(1, 1), image_size(1, 2));

    for i = 1:image_size(1, 1)
       for j= 1:image_size(1, 2)
        image(i, j) = image(i, j);
       end
    end

    for i = 1:image_size(1, 1)
       for j= 1:image_size(1, 2)
           if(i == 1 && j == 1)
               sum = [ image(i, j) image(i, j+1) image(i+1, j) image(i+1, j+1)];
           elseif(i == image_size(1, 1) && j == 1)
               sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1)];
           elseif(i == 1 && j == image_size(1, 2))
               sum = [ image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
           elseif(i == image_size(1, 1) && j == image_size(1, 2))
               sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j)];
           elseif(i == 1)
               sum = [ image(i, j-1) image(i, j) image(i, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
           elseif(i == image_size(1, 1))
               sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1)];
           elseif(j == 1)
               sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1) image(i+1, j) image(i+1, j+1)];
           elseif(j == image_size(1, 2))
               sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
           else
               sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
           end

           image_result(i, j) = uint8(round(mean(sum)));
           sum = 0;
       end
    end
    
    image_result = uint8(image_result);
end

 function [image_result] = with_Median(im)
    image = with_noise(im);
    sum = 0;
    image_size = size(image);
    image_result = zeros(image_size(1, 1), image_size(1, 2));

    for i = 1:image_size(1, 1)
       for j= 1:image_size(1, 2)
        image(i, j) = image(i, j);
       end
    end

    for i = 1:image_size(1, 1)
       for j= 1:image_size(1, 2)
           if(i == 1 && j == 1)
               sum = [ image(i, j) image(i, j+1) image(i+1, j) image(i+1, j+1)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(2));
           elseif(i == image_size(1, 1) && j == 1)
               sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(2));
           elseif(i == 1 && j == image_size(1, 2))
               sum = [ image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(2));
           elseif(i == image_size(1, 1) && j == image_size(1, 2))
               sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(2));
           elseif(i == 1)
               sum = [ image(i, j-1) image(i, j) image(i, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(3));
           elseif(i == image_size(1, 1))
               sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(3));
           elseif(j == 1)
               sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1) image(i+1, j) image(i+1, j+1)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(3));
           elseif(j == image_size(1, 2))
               sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(3));
           else
               sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
               sum = sort(sum);
               image_result(i, j) = uint8(sum(5));
           end      
           sum = 0;
       end
    end
    
    image_result = uint8(image_result);
end