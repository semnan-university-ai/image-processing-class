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
hisR=his(pic,1); % هیستوگرام قزمز
hisG=his(pic,2); % هستوگرام سبز
hisB=his(pic,3);% هستوگرام آبی
 figure;bar(hisR);title('Red')
 figure;bar(hisG);title('Green')
 figure;bar(hisB);title('Blue')
```

histogram function
```ruby
function image = his(pic,n)
his=zeros(1,255);
[h,w,k] = size(pic);
    for i=1:h
        for j=1:w
            his(1,pic(i,j,n))=his(1,pic(i,j,n))+1;
        end
    end
    image =his;
end
```
****
![image](https://user-images.githubusercontent.com/48456571/116561662-c470c980-a917-11eb-9e31-7737ba0f583b.png)
