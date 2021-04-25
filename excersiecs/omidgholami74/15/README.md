
> # Exercise 15
> ابتدا تصویر pool.png را به grayscale تبدیل کنید و سپس توپ زرد را از تصویر حذف کنید.
***
>CODE
```ruby
clc;
close all;
clear all;

image =imread('benchmark/pool.png'); % بار گزاری عکس
figure; % 
imshow(image); % نمایش تصویر
image =rgb2gray(image); % تیدیل عکس رنگی به خاکستری
ball=[403 277 43] % متخصات مزکز توپ
image = insertShape(image,'FilledCircle',ball,...
    'Color',[49 49 49],'Opacity',1); % رسم یک دایره همرنگ بگرند برای حذف توپ

figure;imshow(image);
```
****
![image](https://user-images.githubusercontent.com/48456571/113308593-9188e500-931b-11eb-9009-5a9ef43f4b04.png)

