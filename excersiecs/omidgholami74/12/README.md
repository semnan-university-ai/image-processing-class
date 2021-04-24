
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
function imageOut = image_cut(imageName,cropSize)
%E4_FUN_CUT Summary of this function goes here
%   Detailed explanation goes here
image=imread(strcat('benchmark/',imageName));
        n=size(size(image));
        if n(2) ==3
            image=rgb2gray(image);
        end
        imageSize =size(image);
        image_cuted =image(imageSize(1,1)-(cropSize-1):imageSize(1,1),imageSize(1,2)-(cropSize-1):imageSize(1,2));
        imageOut=image_cuted;
end
```
![image](https://user-images.githubusercontent.com/48456571/113304816-a2cff280-9317-11eb-9e53-cb56e3e529bf.png)

***


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>
