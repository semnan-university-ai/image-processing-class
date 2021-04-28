
> # Exercise 23
  <div dir="rtl">
 رسم هیستوگرام کانال های رنگی تصویر بدون استفاده از توابع آماده
 </div>
 
>CODE

>Main program
```ruby 
image=imread('C:\Users\as\Downloads\pool.png');
```
  <div dir="rtl">
 جدا کردن کانال های رنگی تصویر
 </div>
 
 ```ruby 
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
```
  <div dir="rtl">
 مشخص کردن مکان رسم نمودار
 </div>
 
 ```ruby
subplot(3,2,1);
 ```
  <div dir="rtl">
 رسم هیستوگرام کانال رنگی با استفاده از دستور آمده متلب به منظور مقایسه
 </div>
 
 ```ruby
imhist(r);
 ```
 <div dir="rtl">
 مشخص کردن عنوان نمودار
 </div>
 
 ```ruby
title('Red Histogram with imhist')
```
  <div dir="rtl">
 مشخص کردن مکان رسم نمودار
 </div>
 
 ```ruby
subplot(3,2,2);
```
  <div dir="rtl">
 رسم نمودار با استفاده از فراخوانی تابع نوشته شده
 </div>
 
 ```ruby
bar(hist(r),'r');
 ```
 <div dir="rtl">
 مشخص کردن عنوان نمودار
 </div>
 
 ```ruby
title('Red Histogram')
 ```
 <div dir="rtl">
  برای دو کانال دیگر نیز همانند کانال قرمزعملیات بالا انجام می شود.
 </div>
 
 ```ruby
subplot(3,2,3);
imhist(g);
title('Green Histogram with imhist')
subplot(3,2,4);
bar(hist(g),'g');
title('Green Histogram')


subplot(3,2,5);
imhist(b);
title('Blue Histogram with imhist')
subplot(3,2,6);
bar(hist(b),'b');
title('Blue Histogram')
```
>Function
  
 ```ruby
function his=hist(pic)
 ```
<div dir="rtl">
 به دست آوردن سایز تصویر
 </div>
 
  ```ruby
m=size(pic);
 ```
<div dir="rtl">
 ایجاد یک ماتریس سطری به اندازه 255
 </div>
 
  ```ruby
his=zeros(1,255);
for k=1:255
    s=0;
  ```
<div dir="rtl">
 ایجاد یک حلقه تو درتو برای شمارش تعداد پیکسل ها با شمارهk
 </div>
 
  ```ruby
    for i=1:m(1)
        for j=1:m(2)
            if(pic(i,j)==k)
                s=s+1;
            end    
        end
    end
    his(k)=s;
end 
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/23/sub.jpg)
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/22/1.jpg)
***

