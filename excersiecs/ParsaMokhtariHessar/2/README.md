<div direction='ltr'>###تمرین 1</div>
<div direction='ltr'>باعث می شود پس از هر بار اجرای برنامه پنجره ی فرمان ها پاک شود</div>
"""
clc;
close all;
clear all;
"""
<div direction='ltr'>شعاع دایره : </div>

```
r = 200;
```
<div direction='ltr'>بدلیل تقریبی بودن فرمول دایره باید آستانه تحملی برای شعاع دایره در نظر گرفت که مرز های آن پر رنگ تر شود .</div>

```
t = 200 % threshhold
```
<div direction='ltr'>مکان مرکز دایره را با یک ماتریس یک در دو مشخص می کند . </div>

```
div = [300 300];
```

<div direction='ltr'>تصویر اولیه که دایره قرار است در آن رسم شود را رسم می کنیم .</div>

```
image = zeros(1000,1000);
```
<div direction='ltr'> با گشتن در کل تصویر و سفید کردن نقاطی که ویژگی دایره را با مشخصات بیان شده دارند دایره رسم می شود .</div>

```
for i=1 : 1000
    for j=1 : 1000
        if (div(1,1)-i)^2 +(div(1,2)-j)^2 <= r^2+t && (div(1,1)-i)^2 +(div(1,2)-j)^2 >= r^2-t
            image(i, j) = 255;
        end
    end
end
```
<div direction='ltr'> و در نهایت دایره با دستور زیر نمایش داده می شود . </div>

```
figure,
imshow(image);
imsave
```

![outdivut](t2.bmdiv)

<div direction='ltr'> ولی اگر بخواهیم دایره تو پر رسم کنیم فرمول دایره را با فرمول زیر جایگذاری می کنیم.</div>

```
(div(1,1)-i)^2 +(div(1,2)-j)^2 < r^2

```

<div direction='ltr'>و به این ترتیب رسم می شود :</div>

![outdivut](t2v2.divng)

