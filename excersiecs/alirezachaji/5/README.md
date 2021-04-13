> # Exercise 5
> 5. Draw a picture of an incomplete jar on paper and complete the picture with the help of MATLAB software; In fact, paste the symmetry of the image into the    original image and create a complete jar.
***
>CODE

```ruby
close all          % تمام پنجره ها را می بندد
clear all          % سيستم مموري و مقادير تمام متغير ها را پاك ميكند
clc                % كامند ويندو را پاك مي كند
a=imread("benchmark\kozeh.bmp");  % تصویر مربوط به نصف کوزه را از ورودی میخواند
a=rgb2gray(a);    % تصویر را به خاکستری تبدیل می کند
imsize=size(a);   % ابعاد تصویر را بدست می آورد
out_im=ones(imsize(1),2*imsize(2)); % تصویری جدید به ابعاد 2 برابر تصویر نصف کوزه ایجاد می کند
imshow(a)         % تصویر نصف کوزه را نشان می دهد
for i=1:imsize(1)   % حلقه جهت حرکت  سطری روی پیکسل های نصف کوزه
    for j=1:imsize(2)-1  % حلقه جهت حرکت  ستونی روی پیکسل های نصف کوزه
       out_im(i,j)=a(i,j); % نصف کوزه را روی تصویر جدید کپی می کند
       out_im(i,(imsize(2)+j-1))=a(i,imsize(2)-j); % نصف کوزه را متقارن کرده و در کنار کوزه بالا قرار می دهد
    end
end 
figure;  % فیگور جدید باز می کند
imshow(out_im) % تصویر جدید را نمایش می دهد
imwrite(out_im,"out_im.png") تصویر ساخته شده را با نام جدید ذخیره میکند
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/359d9bf5deaea0d6e03754fa362704e2563d8fbd/excersiecs/alirezachaji/5/kozeh.bmp)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/359d9bf5deaea0d6e03754fa362704e2563d8fbd/excersiecs/alirezachaji/5/Exce05.png)
<div dir="rtl">
توضیحات کلی برنامه <br />
 در این برنامه یک نصف کوزه که در برنامه نقاشی ویندوز کشیده شده را از ورودی میخواند متقارن ان را به همراه کوزه نصفه در یک تصویر جدید قرار داده و در نهایت آن را نمایش داده و ذخیره میکند
</div>
