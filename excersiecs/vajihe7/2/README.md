> # Exercise 2
>برنامه ای بنویسید که یک عدد را به عنوان شعاع دایره و یه عدد را به عنوان مکان رسم دایره از ورودی بگیرد و 
در یک تصویر 1000*1000 پیکسل مشکی رنگ آن دایره را با رنگ سفید نمایش دهد
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;
image=zeros(1000,1000);

b1=input(' markaze dayere ='); %row
b2=input(' markaze dayere ='); %column
a =input('shoaa dayere ='); %shoaa dayere

centeral = {b1,b2}; %midpoint
image(centeral{:})=1;

pic = bwdist(image) <= a ;

imshow(pic)
```
****

![result](https://user-images.githubusercontent.com/79658260/114684996-b5d6bf80-9d26-11eb-94c9-c665ca2571f8.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدای برنامه اندازه ی تصویر را مشخص میکنیم <br />
<b>2</b>. ورودی اول و دوم مختصات قرار گرفتن دایره در تصویر را از کاربر میگیرند و ورودی سوم شعاع دایره را مشخص میکند  <br />
<b>3</b>.  .نزدیکترین مرکز ورودی ها را مشخص میکندcenteralمتغیر.<br />

    
</div>

