<div dir="rtl">
 
#### تمرین 24
#### کانال رنگی قرمز تصویر watch.png را با کانال رنگی قرمز تصویر pool.png جا به جا کنید و خروجی هر دو را نمایش دهید.. <br />
***
### توضیحات کلی برنامه:
در این برنامه ابتدا دو تصویر مورد نظر را از ورودی خوانده و سپس کانال رنگی قرمز این دو تصویر را با هم جابجا کرده و در نهایت تصاویر جدید را نمایش می دهیم ..
 
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

در این بخش ابتدا تصاویر مورد نظر را از ورودی خوانده و سپس به جهت اینکه بتوان کانال قرمز دو تصویر را با هم جابجا کرد تو تصویر را با هم هم سایز می کنیم
سپس توسط متغیر های کمکی کانال قرمز این دو تصویر را با هم جابجا می کنیم و در نهایت تصاویر جدید تولیدی را نمایش می دهیم.

</div>

``` matlab
pic1=imread('benchmark\watch.png');
pic1=imresize(pic1,[383 510]);
pic2=imread('benchmark\pool.png');
subplot(1,4,1);imshow(pic1);
title('Original Image (watch)')
subplot(1,4,2);imshow(pic2);
title('Original Image (pool)')
rw=pic1(:,:,1);
rp=pic2(:,:,1);
pic2(:,:,1)=rw;
pic1(:,:,1)=rp;
subplot(1,4,3);imshow(pic1);
title('New Watch')
subplot(1,4,4);imshow(pic2);
title('New Pool')

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/ab25d8dc3da7edf2fd0acc677dc3f6b090b50a1d/excersiecs/alirezachaji/24/Exce24.png)
***

