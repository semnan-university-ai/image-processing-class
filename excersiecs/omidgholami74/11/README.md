
> # Exercise 11
>بدون استفاده از دستورهای آماده ی متلب نویز فلفل نمکی را روی چند تصویر ایجاد کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;


figure;
image=e11_noise(imread('benchmark/lena.png'),1000);
imshow(image);

figure;
image=e11_noise(imread('benchmark/airplane.png'),500);
imshow(image);

figure;
image=e11_noise(imread('benchmark/baboon.png'),700);
imshow(image);

figure;
image=e11_noise(imread('benchmark/peppers.png'),1500);
imshow(image);
```
****
noise function
```ruby
function imageOut = e11_noise(image,numbers)
%E11_NOISE Summary of this function goes here
%   Detailed explanation goes here
imageSize=size(image);% دریافت ابعاد تصویر
width=imageSize(1,1);% عرض تصویر
height=imageSize(1,2);% ارتفاع تصویر
n=size(imageSize);
colors=[0 255];
if n(2)==3
    image=rgb2gray(image);% اگر زنگی بود تبدیل به خاکستری شود
end
for k=1:numbers
    
    widthRand=randi(width);% ایجاد طول و عرض رندوم
    heightRand=randi(height);%ایجاد طول و عرض رندوم
    
    image(widthRand,heightRand)=colors(randi(2));% ایحاد نویز های سیاه و سفید
end
imageOut=image;
```
***


![image](https://user-images.githubusercontent.com/48456571/113306824-bb410c80-9319-11eb-9b0d-c203fd0184c2.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>
