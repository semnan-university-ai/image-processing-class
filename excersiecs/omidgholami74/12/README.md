
> # Exercise 12
>با کمک برنامه ی تمرین قبل برنامه ای بنویسید که مقدار تمام پیکسل های خروجی از فیلتر میانه، فیلتر میانگین، نویز فلفل نمکی را با یک عدد صحیح محاسبه کند..
***
>CODE
Averag
```ruby
clc;
close all;
clear all;


image=imread('benchmark/airplane.png') % خواندن عکس
image=e11_noise(image,500); % اعمال نویز بر روی عکس با تابع ای که قبلا نوشتیم
[r,c]=size(image); % دریافت طول و عرض تصویر


B=zeros(r,c); % ایجاد ماتریس صفر با همان ابعد تصویر اصلی
for i=2:r-1 % ایحاد حلقه برای تصویر(پیکسل اول را به عنوان پدینگ حساب میکنیم)
    for j=2:c-1  % ایحاد حلقه برای تصویر(پیکسل اول را به عنوان پدینگ حساب میکنیم)
        pixels=[]; % ایجاد یک آرایه خالی برای ریختن حاصل ماتریس دراون آن
          for k=i-1:i+1  %3*3 averaging filter %قیلتر میانگین
            for m=j-1:j+1 % فیلتر میانگین
                pixels=[pixels;image(k,m)]; % افزودن مقدار هر پیکسل درون آرایه
            end
        end %3*3 averaging filter 
        pixels;
        total =sum(pixels);% جمع عناصر داخل ماتریس فیلتر
        temp=floor(total*(1/9)); % میانگین گیری 
        
        B(i,j)=temp;% میانگین همسایه ها را جایگزین پیکسل وسط ماتریس میکنیم
    end
end
figure;imshow(uint8 (B)); %نمایش عکس 
figure;imshow(image);% نمایش عکس
```
![image](https://user-images.githubusercontent.com/48456571/113305026-dca0f900-9317-11eb-9c4f-6d1fb977095b.png)


****
median
```ruby
image=e11_noise('benchmark/airplane.png',500); % اعمال نویز بر روی عکس با تابع ای که قبلا نوشتیم
[r,c]=size(image); % دریافت طول و عرض تصویر


B=zeros(r,c); % ایجاد ماتریس صفر با همان ابعد تصویر اصلی
for i=2:r-1  % ایحاد حلقه برای تصویر(پیکسل اول را به عنوان پدینگ حساب میکنیم)
    for j=2:c-1  % ایحاد حلقه برای تصویر(پیکسل اول را به عنوان پدینگ حساب میکنیم)
        pixels=[];  % ایجاد یک آرایه خالی برای ریختن حاصل ماتریس دراون آن
          for k=i-1:i+1  %3*3 median filter %قیلتر میانه
            for m=j-1:j+1 %قیلتر میانه
                pixels=[pixels;image(k,m)];% افزودن مقدار هر پیکسل درون آرایه
            end
        end %3*3 median filter 
        mid =median(pixels);% پیدا کردن حد وسط
        B(i,j)=mid; جایگذازی به جای پیکسل وسط ماتریس
    end
end
figure;imshow(uint8 (B));% نمایش عکس
figure;imshow(image);% نمایش عکس
```
![image](https://user-images.githubusercontent.com/48456571/113304816-a2cff280-9317-11eb-9e53-cb56e3e529bf.png)

***
