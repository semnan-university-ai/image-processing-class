> # Exercise 9
> کندCROPبرنامه ای بنویسید که یک طول و عرض را مشخص کرده و سپس یک تصویر را
***
>CODE

Main Program
```ruby
close all;
clear all;
clc;

a = 300;
b =100;

image = imread("boat.png");
imagecrop = imcrop(image,[a b a b]);
figure;
imshow(image);
figure;
imshow(imagecrop);


```
****
![result](https://user-images.githubusercontent.com/79658260/115452340-8d255d00-a233-11eb-93f7-7a382dd89e16.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.  درابتدای برنامه عکس را بارگذاری میکنیم ومختصات نقاطی که میخواهیم برش دهیم را وارد میکنیم و از تابع بریدن متلب استفاده کرده ایم<br />
 <b>2</b>
</div>

