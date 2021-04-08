clc;
close all;
clear all;

image = imread('img/airplane.png');
image = rgb2gray(image);
%image = imnoise(image, "salt & pepper", .05);
temp = zeros(250, 250);
        ran=randi([0 512],512,512);

for i=1:512
    for j=1:512
        if ran(i,j)<=10
            if image(i,j)<128
                image(i,j)=255;
            else
                image(i,j)=0;
            end
        end
            
    end
end

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
       
       %image_result(i, j) = uint8(round(mean(sum)));
       sum = 0;
   end
end

figure, imshow(image);
figure, imshow(uint8(image_result));