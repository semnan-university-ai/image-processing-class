> # تمرین 5
>یک تصویر کوزه ی ناقص رو کاغذ بکشید و تصویر آن را با کمک نرم افزار متلب کامل کنید؛ در واقع تقارن تصویر را به تصویر اصلی بچسبانید و یک کوزه ی کامل ایجاد کنید. .

***
>CODE

Main Program
```ruby
close all;
clear all;
clc;

I = imread("benchmark/jug.jpeg"); 
subplot(2,2,1) 
imshow(I)
title 'original image' 
% Flip left/right: 
Ir = flipdim(I,2); 
subplot(2,2,2) 
imshow(Ir)
title 'flipped image'
% Join the original and flipped images: 
IIr = horzcat(I,Ir); 
subplot(2,2,3:4) 

imshow(IIr)
title 'joined images'
```
****
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/5/q5.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه تصویر را بارگذاری میکند<br />

<b>2</b>.     تصویر ورودی به کمک تابع فلیپ ال آر از سمت چپ به راست چرخانده می شود<br />
<b>3</b>.  با تابع horzcat/ دو تصویر را ادغام کرده<br />
<b>4</b>. در پایان تصویر به هم چسبیده نشان داده می شود.<br />

    
</div>

