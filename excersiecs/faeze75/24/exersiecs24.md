> # Exercise 24

***
>CODE

```ruby
clear all
clc
clear;
image = imread('watch.png');        %تصویر اول را خوانده
image=imresize(image,[383 510]);    % تصویر اول را تغییر سایز میدهیم تا هم اندازه تصویر دوم شود
figure,imshow(image); 
r=image(:, :,1);                    % کانال قرمز تصویر اول را در متغیری ذخیره می کنیم
image2= imread('pool.png');         %تصویر دوم را خوانده
figure,imshow(image2);
rr=image2(:, :,1);                  % کانال قرمز تصویر دوم را در متغیری ذخیره می کنیم
image(:,:,1)=image2(:,:,1);         % کانال قرمز دو تصویر را با هم جابجا می کنیم
image2(:, :,1)=r;
figure, imshow(image);             % نمایش تصاویر
figure, imshow(image2);
```
![alt text]()
***
<div dir="rtl">
توضیحات برنامه <br />
همانطور که مشاهده مینمایید جابجا کردن کانال ها باعث ایجاد یک بک گراند از تصویر قبلی بر روی تصویر جدید شده است
</div>
