
<div dir="rtl">
 
#### تمرین 22
#### کانال رنگی آبی و قرمز یک تصویر را با هم جابجا کنید و خروجی را نمایش دهید.. <br />
***
### توضیحات کلی برنامه:
در این برنامه تصویر را خوانده و سپس کانال های رنگی آبی و قرمز آن را باهم جابجا کرده و در نهایت تصویر جدید ایجاد شده را نمایش می دهیم ..
 
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

در این بخش ابتدا تصویر ورودی را خوانده و محتویات آن را داخل متغیر میریزیم و سپس یکی از کانال های قرمز یا آبی را داخل متغیر کمکی ریخته و به کمک آن مقادیر دو کانال
قرمز و آبی را با هم جابجا کرده و نهایتا تصویر جدید تولیدی را نمایش می دهیم.

</div>

``` matlab
pic=imread('benchmark\fruits.png');
subplot(1,2,1);imshow(pic);
title('Original Image')
r=pic(:,:,1);
pic(:,:,1)=pic(:,:,3);
pic(:,:,3)=r;
subplot(1,2,2);imshow(pic);
title('Changed Image')
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/9feaa9e64fc29aab022a6367a2ecde3e936fac2e/excersiecs/alirezachaji/22/Exce22.png)
***

