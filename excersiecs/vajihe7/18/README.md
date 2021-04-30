
> # Exercise 18
>سعی کنید صفحه ی ساعت تصویر png.watch را کامال سفید کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

image =imread('watch.png');

r = image(:,:,1); 
g = image(:,:,2); 
b = image(:,:,3);
 a=90;
for i=290:589   %  mokhtasat tasvir daraye saat
   if a<0
       a=0;
   end
    for j=333+a:694-a   %  mokhtasat tasvir daraye saat
            if ~(r(i,j)>g(i,j) && g(i,j)>b(i,j)&& r(i,j+4)>g(i,j+4) && g(i,j+4)>b(i,j+4)) % شرایط رنگ برای جداسازی رنگ قهویی از بقیه رنگ ها
                image(i,j,1)=255;
                image(i,j,2)=255;
                image(i,j,3)=255;
            end
    end
    if i<500
        a=a-1;
    elseif i>560
        a=a+5;
    else
        a=a+1
    end
end
imshow(image);
```
****

![result](https://user-images.githubusercontent.com/79658260/116665494-19abea00-a9af-11eb-9eb5-d1f1e11766d6.png)





<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.با تعریف 3 متغیر کانال هلی رنگی را جداسازی میکند <br />
<b>3</b>. با استقاده از یک متغیر ابعاد حلقه را در هر نقطه از تصویر تغییر می دهیم که بیرون زدگی نداشته باشد.<br />
<b>4</b>. متغیرa اگر کمتر از 0 باشد برابر 0 میشود تا منفی نشود<br />
  <b>5</b>.  اگر شرط برقرار باشد رنگ پیکسل ها  به سفید تبدیل می شود <br />
 
</div>
