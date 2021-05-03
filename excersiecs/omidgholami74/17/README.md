> # Exercise 17
>آسمان تصویر mountain.png را سیاه رنگ کنید
***
>CODE

 <div dir="rtl">
جابه جایی کانال های رنگی
 </div>
 
```ruby
clc;
close all;
clear all;

image=imread("benchmark/mountain.png"); % بارگذاری تصویر

```

 <div dir="rtl">
ایجاد حلفه در تصویر برای پیمایش در تصویر
 </div>

```ruby
for j=1:640 %arze tasvir
    for i=1:150 % ارتقاع تصویر
     if 165<image(i,j) % اگر رتگ پیکسل بزرگتر از 165 بود یا سفید بود 
         image(i,j)=0; % رنگ پیکسل را مشکی کن
     end
     if image(i+1,j)<165% اگر رنگ پیکشل پایینی ترش کوچکتر از 165بود
         break; % حلقه را بشکن و عرض دیگه را شروع کن
     end
    end
end
image=uint8(image);% تیدیل عکس به uint
figure; % باز شدن یک پنجره مخصوص شکل جدید
imshow(image) % نمایش عکس
```
****

 <div dir="rtl">
خروجی :
    
 </div>
 
![image](https://user-images.githubusercontent.com/48456571/113309274-399eae00-931c-11eb-8f9a-c9af703f9f41.png)

