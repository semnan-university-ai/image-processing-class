close all
clear all
clc

image = imread("../benchmark/airplane.png");
image = rgb2gray(image);

[x,y] = size(image);

image_Noise = SPNoise(image);
image_Mean = Mean_(image);
image_Median = Median_(image);
imn_sum = [] ; imm_sum = [] ; immed_sum = [];

for i=1:x
    for j=1:y
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

function [NoiseImg]= SPNoise(image)
    percent = 20;
    p = 255*percent/100;
    [x,y] = size(image);

    NoiseImg = image;
    Rmatrix = randi(x,y);

    NoiseImg(Rmatrix <= p/2) = 0;
    NoiseImg(Rmatrix > p/2 & Rmatrix < p) = 255;
end

function [image_result] = Mean_(image)
    image = SPNoise(image);
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

function [image_result] = Median_(image)
    image = SPNoise(image);
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