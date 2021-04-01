> # Exercise 13
>روی یک تصویر نگاتیو نویز فلفل نمکی را با اعداد مختلف امتحان کنید و میانگین تمام پیکسل های آن را در یک جدول خروجی دهید.

***
>CODE

Main Program
```ruby
clc;
close all;
clear all;


image=e13_negative("benchmark/baboon.png");
image=e11_noise(image,900);
imshow(image);
meanIntensity = mean(image(:));
imshow(image)
disp(meanIntensity)
end
```
****
noise function
```ruby
function imageOut = e11_noise(image,numbers)
%E11_NOISE Summary of this function goes here
%   Detailed explanation goes here
imageSize=size(image);
width=imageSize(1,1);
height=imageSize(1,2);
n=size(imageSize);
colors=[0 255];
if n(2)==3
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
image=imread(image);
image =rgb2gray(image);
[width,height] =size(image);

for i=1:width 
    for j=1:height
        image(i,j,:)=255-image(i,j,:);
    end
end
image_out=image;
end
```
***
![image](https://user-images.githubusercontent.com/48456571/113307362-4b7f5180-931a-11eb-8093-d4d3f840702c.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>
