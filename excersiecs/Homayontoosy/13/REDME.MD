close all
clear all
clc

خواندن تصوير 
و ذخيره سايز تصوير در متغيرها 

image = imread('d:/13 new/girl.jpg');
[x,y] = size(image);

تبديل تصوير با حلقه به تصوير نگاتيو 


for i=1:x
    for j=1:y
        image(i,j) = 255 - image(i,j);
    end
end

ايجاد نويز براي 8 مقدار جداگانه ايجاد كرده و سپس ميانگين تمام پيكسلها را محاسبه ميكنيم نمايش ميدهيم 

s=1;
for i=.1:.1:.8
   image2 = imnoise(image,'salt & pepper',i);
   avg = mean(image2(:));
   subplot(2,4,s);
   imshow(image2);
   title(avg);
   s=s+1;
end
