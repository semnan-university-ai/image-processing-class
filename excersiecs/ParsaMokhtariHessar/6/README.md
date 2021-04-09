# تمرین 6

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
    تعیین ابعاد پیکسل های این تصویر نسان دهنده طیف خاکستری
</div>

```
r=10
```
<div dir="rtl">
    ساختن ماتریس متغییر تصویر طیفی
</div>

```
image=zeros(256*r,256*r);
```
<div dir="rtl">
    گرفتن سایز آن
</div>

```
imagesize=size(image);
```
<div dir="rtl">
    حلقه زیر با استفاده از دو متغییر کمکی باعث می شود که هر ده با رنگ تغییر کرده و یک واحد روشن تر شود
</div>

```
w=0
p=0
for i=1:imagesize(1,1) 
    if w==256
        break;
    end
    for j=1:imagesize(1,2)
           image(i,j)=w;            
    end
    if p==r
        w=w+1;
        p=0
    end
    p=p+1  
end
```
<div dir="rtl">
    تصویر نمایش  داده می شود و ذخیره می شود. 
</div>

```
figure,
imshow(uint8(image));
imsave,
```
