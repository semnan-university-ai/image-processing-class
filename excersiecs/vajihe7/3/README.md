> # Exercise 3
>برنامه ای بنویسید که بدون استفاده از توابع متلب تصاویر benchmark را به حالت خاکستری ببرد.
***
>CODE

Main Program
```ruby
clear all;
close all;
clc;
image = imread('benchmark/fruits.png');
figure;
imshow(image);
a=size(image);
n=size(a);
color=[0 255]'
if n(2)==3
    image=rgb2gray(image);
end
figure;
imshow(image);
```
****

![img](https://user-images.githubusercontent.com/79658260/114689099-9e99d100-9d2a-11eb-8976-51bb4f80f93c.png)



<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدای برنامه عکس را بارگذاری کردیم<br />
<b>2</b>.با دستورsizeتعداد بعد تصویر را میشمارد <br />
<b>3</b>.aتعداد بعد تصویر است<br />
  <b>4</b>دستور ifرا برای اینکه بفهمیم عکس رنگی است یا نه بکار بردیم
  .<br />

    
</div>

