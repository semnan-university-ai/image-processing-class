> # Exercise 23
>بدون استفاده از توابع آماده ی متلب هیستوگرام هر یک از کانال های رنگی یکی از تصاویر را به صورت جداگانه محاسبه کنید. کدهای هیستوگرام را تبدیل به یک تابع در فایل جداگانه کنید و برای هر سه کانال رنگی آن را فراخوانی کنید
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

pic=imread('benchmark/sails.png');

hisR=his(pic,1);
hisG=his(pic,2);
hisB=his(pic,3);
 figure;bar(hisR);title('Red')
 figure;bar(hisG);title('Green')
 figure;bar(hisB);title('Blue')
```
****
![image](https://user-images.githubusercontent.com/48456571/116561662-c470c980-a917-11eb-9e31-7737ba0f583b.png)
