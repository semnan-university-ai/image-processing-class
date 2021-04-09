# تمرین 3
<br />
<div dir="rtl">
    باعث می شود پس از هر بار اجرای برنامه پنجره ی فرمان ها پاک شود   
</div>

```
clc;
close all;
clear all;
```
<div dir="rtl">
  بارگزاری کردن تصاویر
</div>

```
image = imread('../../../benchmark/fruits.png');
```

<div dir="rtl">
   گرفتن اندازه تصویر
</div>

```
imsize = size(image);
```

<div dir="rtl">
  ساختن متغییر تصویر خروجی با توجه به مقادیر تصویر ورودی
</div>

```
ImageGrey = zeros(imsize(1,1),imsize(1,2));
```

<div dir="rtl">
  استفاده از فرمول ماتریس تبدیل RGB به Y برای تبدیل  تصویر به خاکستری
</div>

```
for i=1 : 512
    for j=1 : 512
        %  Grayscale = 0.299 * Red + 0.587 * Green + 0.114 * Blue using this formula
        ImageGrey(i, j) = 0.299 * image(i, j, 1) + 0.587 * image(i, j, 2) + 0.114 * image(i, j, 3);
    end
end
```

<div dir="rtl">
  تبدیل نمودن تصویر ورودی با کتابخانه آماده بمنظور مقایسه
</div>

```
image2 = rgb2gray(image);
```


<div dir="rtl">
  نشان دادن تصویر اصلی :
</div>

```
figure,
imshow(image);
```

<div dir="rtl">
    نشان دادن تصویر تبدیل شده با کتابخانه
</div>

 ```
 figure,
 imshow(image2);
 ````
 
 <div dir="rtl">
    نشان دادن تصویر تبدیل شده بصورت دستی
</div>

 ```
figure,
imshow(uint8(ImageGrey));
```
<div dir="rtl">
  ذخیره سازی تصویر
</div>

```
%imsave
```

<div dir="rtl">
خروجی  تصویر تبدیل شده بصورت دستی
</div>

[output](t3.bmp)
