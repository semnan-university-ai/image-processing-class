<div dir="rtl">
 
#### تمرین 20
#### با دستورات ساده ی متلب سعی کنید اسم خودتان را با کلمات فارسی در یک تصویر ایجاد کنید. استفاده از توابع آماده ی رسم کاراکترها در این تمرین مجاز نیست. <br />
***
### توضیحات کلی برنامه:
در این برنامه فایل باینری مربوط به نام که  داخل فایل a.bin ذخیره شده است به داخل متغیر لود می شود و سپس با توجه به مقادیر باینری این فایل تصویر خام ایجاد شده مقدار دهی شده و در نهایت نمایش داده می شود ..
 
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

در این بخش ابتدا فایل باینری مربوط به نام باز شده و محتویات آن به صورت سطر به سطر درون متغیر قرار می گیرد.
سپس توسط حلقه تکرار تا زمانی که فایل به سطر آخر برسد مقادیر هر سطر را درون ماتریس که ایجاد کرده ایم 
ریخته می شود .

</div>

``` matlab

fid = fopen('a.bin');
tline = fgetl(fid);
a=zeros(116,400);
g=1;
while ischar(tline)
    tline = fgetl(fid);
    a(g,:)=tline;
    g=g+1;
end

```
***
<div dir="rtl">

در این بخش توسط حلقه های تکرار مقادیر موجود در ماتریس بررسی می شوند و پیکسل های آن توسط دستورات شرطی به صفر و یک تبدیل می شوند
چون که فایل باینری اولیه مقادیری جدای صفر و یک را درون خود دارد سپس تصویر نهایی ایجاد شده نمایش داده می شود.

</div>

``` matlab

for i=1:116
    for j=1:400
        if(a(i,j)==48)
            a(i,j)=1;
        else
            a(i,j)=0;
        end
    end
end
b=logical(a);
imshow(b);
imwrite(b,'alireza.png');   

```


***

![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/5644bab9f1f1fc2ed5844338ef2b902ef3d1faf1/excersiecs/alirezachaji/20/Exce20.png)

***

![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/5644bab9f1f1fc2ed5844338ef2b902ef3d1faf1/excersiecs/alirezachaji/20/alireza.png)

