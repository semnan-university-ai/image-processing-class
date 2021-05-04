<div dir ="rtl">

تمرین 11:<br/>
     بدون استفاده از دستورهای آماده ی متلب نویز فلفل نمکی را روی چند تصویر ایجاد کنید. <br/>

</div>

```
clc;
close all;
clear;
```
<div dir ="rtl">
تصویر خوانده می شود  وبا استفاده از دستور imresize سایز تصویرمان را به 250*400 تغییر دادیم.  <br/>
</div>

```
 addpath('benchmark')
 im=imread('pool.png');
 im=imresize(im,[250,400]);
```
<div dir ="rtl">
این تکه کد در صورت رنگی بودن تصویر خاکستری می شود و تصویر اصلی خاکستری شده مان نمایش داده می شود. <br/>
</div>

```
 im2=rgb2gray(im2); 
 figure
 imshow(im2);
 title('Original image')

```

<div dir ="rtl">
  با فرض اینکه پیکسل سیاه ما دارای مقدار "4" باشد و پیکسل  سفید "251" باشد و سایز تصویرمان را در متغیر جدید m*n قرار می دهیم..<br/>
</div>

```
b=4;w=251;  %assuming our black pixel is having a value of '4' & the white one is '251'
 img_with_noise= im; 
 %preserving the original image 'im' & operating on a new variable
 [m,n]=size(im);
```
<div dir ="rtl">
 یک ماتریس رندوم m*n ایجاد میکند که مقدار پیکسل های آن به صورت رندوم 0یا  255 می گیرند.<br/>
</div>.

```
x = randi([0,255],m,n);  
 %over a range of 0 to 255
 img_with_noise(x <= b) = 0;  
 img_with_noise(x >=w) = 255;  
 %this step will add the salt noise in the image
```
<div dir ="rtl">
 نمایش تصویر دارای نویز فلفل  نمکی <br/>
</div>

```
figure
 imshow(img_with_noise)%Show the corrupted image
 title('Salt and pepper noise image')
```

![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/11/q11.png)
