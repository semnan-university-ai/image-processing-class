> # Exercise 17
>آسمان تصویر mountain.png را سیاه رنگ کنید
***
>CODE
```ruby
clc;
close all;
clear all;

image=imread("benchmark/mountain.png");
for j=1:640 %arze tasvir
    for i=1:150
     if 165<image(i,j)
         image(i,j)=0;
     end
     if image(i+1,j)<165
         break;
     end
    end
end
image=uint8(image);
figure;
imshow(image)
```
****
![image](https://user-images.githubusercontent.com/48456571/113309274-399eae00-931c-11eb-8f9a-c9af703f9f41.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>
