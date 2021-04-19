
> # Exercise 6
>یک تصویر راه راه بسازید که از سمت بالا سیاه کامل و پایین آن سفید باشد.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

image =zeros(255,500);% ساخت ماتریس صفر با ابغاد 255 در 500
image =uint8(image); % تبدیل ماتریس به uint8
imageSize=size(image); % گرفتن سایز ماتریس

for i=1:imageSize(1,1) % حلقه در طول و عرض عکس
    for j=1:imageSize(1,2)
        image(i,j)=i-1;% افزایش مقدار رنگ از پایین به بالا
    end
end
imshow(image); % تمایش عکس
```
****

![image](https://user-images.githubusercontent.com/48456571/113287825-567ab780-9303-11eb-98f5-6da15f2bbb76.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا یک ماتریس صفر ایجاد میکنیم<br />
<b>2</b>نوه ماتریس از double به uint8 تغییر میدهیم <br />
<b>3</b>. با استفاده از حلقه ها مقدار رنگ را از سفید تا سیاه تغییر می دهیم.<br />
    
</div>
