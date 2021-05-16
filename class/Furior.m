clc;
clear all;
close all;

image = imread('class/paint.jpg');
image_size = size(image);

temp_image_size = size(image_size);
if(temp_image_size(2) > 2)
    image = rgb2gray(image);
end

spec_orig = fft2(double(image));
spec_img = fftshift(spec_orig);

figure;
subplot(2,2,1);
imshow(image);
title('original image');

subplot(2,2,2);
spec_img_temp = log(1 + spec_img);
imshow(spec_img_temp,[]); 
title('spectrum original image');

%spec_img(1:image_size(1,1), image_size(1,2)/2-50:image_size(1,2)/2+50) = 0;
%spec_img(image_size(1,1)/2-50:image_size(1,1)/2+50, 1:image_size(1,2)) = 0;

for i = 1 : image_size(1)
    if(i > round(image_size(1) / 2 - 15) && i < round(image_size(1) / 2 + 15))
        continue;
    end
    for j = round(image_size(2) / 2 - 2) : round(image_size(2) / 2 + 2)
        spec_img(i,j) = 0; 
    end
end


subplot(2,2,3);
ptnfx = ifft2(ifftshift(spec_img));
imshow(uint8(ptnfx));
title('result image');

spec_orig = fft2(ptnfx);
spec_img = fftshift(spec_orig);

subplot(2,2,4);
spec_img = log(1 + spec_img);
imshow(spec_img,[]); 
title('spectrum result image');