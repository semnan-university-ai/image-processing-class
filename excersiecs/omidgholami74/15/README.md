
> # Exercise 15
> ابتدا تصویر pool.png را به grayscale تبدیل کنید و سپس توپ زرد را از تصویر حذف کنید.
***
>CODE
```ruby
clc;
close all;
clear all;

image =imread('benchmark/pool.png');
figure;
imshow(image);
image =rgb2gray(image);
ball=[403 277 43]
image = insertShape(image,'FilledCircle',ball,...
    'Color',[49 49 49],'Opacity',1);

figure;imshow(image);
```
****
![image](https://user-images.githubusercontent.com/48456571/113308593-9188e500-931b-11eb-9009-5a9ef43f4b04.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>
