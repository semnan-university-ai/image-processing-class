
```ruby
clear all
clc
clear;
image = imread('lena.png');    % تصویر را میخواند
figure,imshow(image);          %نمایش تصویر اصلی
b= image(:, :, 3);             % کانال ابی تصویر را در یک متغیر ذخیره می کنیم
image(:,:,3)=image(:,:,1);     %مقدار کانال قرمز را  جایگزین کانال آبی میکنیم
image(:,:,1)=b;                % مقدار کانال آبی زا جایگزین کانال قرمز می کنیم
figure,
imshow(image);                 %نمایش تصویر نهایی
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/22/Screenshot%20(34).png)
***
<div dir="rtl">
توضیحات برنامه <br />
همانطور که می بینید تمامی قسمت های تصویر که رنگ قرمز داشت اینبار آبی شده است
</div>
