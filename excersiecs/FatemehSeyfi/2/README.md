> # تمرین 2
>برنامه ای بنویسید که یک عدد را به عنوان شعاع دایره و یه عدد را به عنوان مکان رسم دایره از بگیرد و در یک تصویر 1000*1000 پیکسل مشکی رنگ آن دایره را با رنگ سفید نمایش دهد. 
***
>CODE

Main Program
```ruby
close all;
clear all;
clc;
r=input(" please enter desired radius:");
x=input(" please enter x coordinates of the centroid:");
y=input(" please enter y coordinates of the centroid:");
image=zeros(1000,1000);
imshow(image);
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
plot(xunit, yunit,'w','linewidth',3);
```
****
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/2/q2.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>دریافت مختصات مرکز دایره و شعاع دایره <br />
<b>2</b>.یک تصویر با مقدار اولیه صفر (مشکی) به طول عرض تعیین شده در صورت سوال ایجاد میشود  <br />
<b>3</b>.    مختصات قطبی به مختصات کارتزین تبدیل می کنیم .<br />
<b>4</b>. کمک تابع plotدایره ای با رنگ سفید در مختصات و شعاع داده شده کشیده می شود 
    
</div>

