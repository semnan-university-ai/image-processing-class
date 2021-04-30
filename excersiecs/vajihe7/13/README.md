> # Exercise 13
>روی یک تصویر نگاتیو نویز فلفل نمکی را با اعداد مختلف امتحان کنید و میانگین تمام پیکسل های 
آن را در یک جدول خروجی دهید.
***
>CODE

Main Program
```ruby
clc;
clear;
img = imread('cameraman.tif');

imagesize=size(img);
for i=1:imagesize(1,1)
    for j=1:imagesize(1,2)
        img(i,j)=255-img(i,j);
    end 
end
imshow(img);
image1=imnoise(img,'salt & pepper',0.02);
image2=imnoise(img,'salt & pepper',0.35);
image3=imnoise(img,'salt & pepper',0.55);
image4=imnoise(img,'salt & pepper',0.75);

 S=zeros(1,4);
 S(1,1) =round(mean(mean(image1)));

 S(1,2) =round(mean(mean(image2)));

 S(1,3) =round(mean(mean(image3)));

 S(1,4) =round(mean(mean(image4)));

 disp(S);
```
****
![result](https://user-images.githubusercontent.com/79658260/116656939-ce8bda00-a9a2-11eb-84a2-654a0bf7663e.png)





<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>. با کمک حلقه تصویر را نگاتیو کردیم و نمایش داده شده<br />
<b>3</b>. نویز فلفل نمکی را با 4عدد مختلف ایجاد کرده و میانگین تمام پیکسل های 
آن  در یک جدول در خروجی نمایش داده شد..<br />
 
    
</div>

