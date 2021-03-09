clc;
close all;
clear all;

image = imread("histogram.jpg");
%imhist(image);

image2 = image;

pixel_histogram = zeros(1, 256);
pixel_cdf = zeros(1, 256);
new_value = zeros(1, 256);

image_size = size(image);

for i = 1 : image_size(1, 1)
    for j = 1 : image_size(1, 2)
        pixel_histogram(1, image(i,j) + 1) = pixel_histogram(1, image(i,j) + 1) + 1;
        % pixel_histogram(1, image(i,j) + 1) += 1;
    end
end

pixel_cdf(1, 1) = pixel_histogram(1, 1);
min_cdf = pixel_cdf(1, 1);
max_cdf = pixel_cdf(1, 1);

for i = 2 : 256
   pixel_cdf(1, i) = pixel_cdf(1, i - 1) + pixel_histogram(1, i);
   
   if( pixel_cdf(1, i) > max_cdf )
       max_cdf = pixel_cdf(1, i);
   end
   
   if( pixel_cdf(1, i) < min_cdf )
       min_cdf = pixel_cdf(1, i);
   end
end

for i = 1 : 256
    new_value(1, i) = round( ( ( pixel_cdf(1,i) - min_cdf ) / ( max_cdf - min_cdf ) ) * 255 );
end

for i = 1 : image_size(1, 1)
    for j = 1 : image_size(1, 2)
        image2(i, j) = new_value(1, image2(i, j) + 1);
    end
end

figure;
imshow(image);

figure;
imshow(image2);