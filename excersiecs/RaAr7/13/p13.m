close all
clear all
clc

image = imread('../../../benchmark/lena.png');
[x,y] = size(image);

for i=1:x
    for j=1:y
        image(i,j) = 255 - image(i,j);
    end
end
s=1;
for i=.1:.1:.8
   image2 = imnoise(image,"salt & pepper",i);
   avg = mean(image2(:));
   subplot(2,4,s);
   imshow(image2);
   title(avg);
   s=s+1;
end

