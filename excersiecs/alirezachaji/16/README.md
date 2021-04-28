
<div dir="rtl">
 
#### تمرین 16
#### چشم های تصویر zelda.png را حذف کنید.. <br />
***
### توضیحات کلی برنامه:
در این برنامه ابتدا با روش تشخیص چشم مختصات حدودی چشم ها را به دست آورده و آن را حذف میکنیم البته برای حذف به گونه ای عمل شده 
که رنگ محل حذف تقریبا مشابه اطراف خوب باشد..
 
### توضیحات بخش های برنامه
***

 این قسمت باعث بسته شدن تمام پنجره ها ، ریست شدن تمام متغیر ها و پاک شدن کامند ویندو می گردد <br />
</div>

``` matlab

close all;         
clear all;         
clc;    

```
***
<div dir="rtl">

در این بخش ابتدا تصویر را از ورودی خوانده آن را داخل متغیر میریزیم و سپس آن را نمایش می دهیم
سپس توسط دستورات تشخیص چشم مختصات محل چشم چپ را پیدا میکنیم و سپس مقدار آن پیکسل ها را با کمک رنگ پیکسل های
اطراف آن مقدار دهی میکنیم
</div>

``` matlab

pic = imread('..\..\..\benchmark\zelda.png');
imshow(pic);
EyeDetect = vision.CascadeObjectDetector('LeftEyeCART');
BB=step(EyeDetect,pic);
BB(1,4)=30;
BB(1,2)=BB(1,2)+20;
for i=BB(1,2):BB(1,2)+BB(1,4)+5
    for j=BB(1,1):BB(1,1)+BB(1,3)
        pic(i,j)=pic(i+35,j);
    end
end    

```
***
<div dir="rtl">
عملیات بالا را روی چشم راست نیز اعمال میکنیم و در نهایت تصویر خروجی را نمایش می دهیم
</div>

``` matlab

EyeDetect = vision.CascadeObjectDetector('RightEyeCART');
BB=step(EyeDetect,pic);
BB(1,4)=30;
BB(1,2)=BB(1,2)+22;
for i=BB(1,2):BB(1,2)+BB(1,4)+15
    for j=BB(1,1)-10:BB(1,1)+BB(1,3)-5
        pic(i,j)=pic(i+40,j-5);
    end
end    
figure,
imshow(pic); 

```
***

![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/8f86c279a68c464d251d6ae732f0133a1262db8b/excersiecs/alirezachaji/16/Exce16.png)


