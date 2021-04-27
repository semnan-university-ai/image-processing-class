> # Exercise 13
>روی یک تصویر نگاتیو نویز فلفل نمکی را با اعداد مختلف امتحان کنید و میانگین تمام پیکسل های آن را در یک جدول خروجی دهید.

***
>CODE

Main Program
```ruby
clc;
close all;
clear all;


image=e13_negative("benchmark/baboon.png"); % بارگزاری تصویر
image=e11_noise(image,900); % اعمال نویز بر روی تصویر با تعداد مشخص
imshow(image); % نمایش تصویر اصلی با نویز
meanIntensity = mean(image(:));% میانگین گیری 
imshow(image) % نمایش عکس
disp(meanIntensity) % نمایش مقدار میانگین در  خروجی متلب
end
```
****
noise function 
```ruby
function imageOut = e11_noise(image,numbers) % تصویر  و تعداد نویز را از وروذی میگیرد
%E11_NOISE Summary of this function goes here
%   Detailed explanation goes here
imageSize=size(image); % سسایز عکس را بدست می آورد
width=imageSize(1,1);% طول عکس
height=imageSize(1,2);% ارتفاع عکس
n=size(imageSize); % تغداد بعد های عکس
colors=[0 255]; % زنگ های مویوط به نویز ما
if n(2)==3 % اگر عکس سه بعدی بود (rgb ) بوذ
    image=rgb2gray(image);
end
for k=1:numbers
    
    widthRand=randi(width);
    heightRand=randi(height);
    
    image(widthRand,heightRand)=colors(randi(2));
end
imageOut=image;

```
***
negative function
```ruby
function image_out = e13_negative(image)
%E13_NEGATIVE Summary of this function goes here
%   Detailed explanation goes here
image=imread(image); % خواندن عکس
image =rgb2gray(image); % تبدیل  عکس یه خاکستری
[width,height] =size(image); % دریافت طول و عرض عکس

for i=1:width 
    for j=1:height
        image(i,j,:)=255-image(i,j,:);% مثدار هر پیکس از از 255 کم می کنیم
    end
end
image_out=image; % خروجی تابع
end
```
***
![image](https://user-images.githubusercontent.com/48456571/113307362-4b7f5180-931a-11eb-8093-d4d3f840702c.png)

