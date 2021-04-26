
<div dir ="rtl">

تمرین 13:<br/>
    روی یک تصویر نگاتیو نویز فلفل نمکی را با اعداد مختلف امتحان کنید و میانگین تمام پیکسل های آن را در یک جدول خروجی دهید.   <br/>

</div>

```
clc;
close all;
clear;
``` 
<div dir ="rtl">
در این کد  ماتریس1*8 برای ساخت جدول  مان ایجاد کردیم و   در خط بعد تصویرمان را می خوانیم  وسپس اندازه تصویرمان  را در متغیر جدید m*nقرار می دهیم  .  <br/>
</div>

```
 t=zeros(8,1);
image = imread("../../../benchmark/airplane.png");
[m,n] = size(image);
 
```
<div dir ="rtl">
در این  کد تصویرمان به تصویر نگاتیو تبدیل می گردد.  . <br/>
</div>

```
for i=1:m
    for j=1:n
        image(i,j) = 255 - image(i,j);
    end
end

```

<div dir ="rtl">
   در این کد چند مقدار نویز مختلف ایجاد شده و میانگین  تمام پیکسل ها  محاسبه شده  و در آخر با دستور imshow خروجی نمایش داده می شود   .<br/>
</div>

```
s=1;
avg=zeros(8,1);
v=1;
for i=.1:.1:.8
   image1 = imnoise(image,"salt & pepper",i);
   avg(1,s) = mean(image1(:));
   subplot(2,4,s);
   imshow(image1);
   title(avg(1,s));
   s=s+1;
end
avg=uint8(avg);
g(1:8,1)=avg(1,:);
```
<div dir ="rtl">
   در این قسمت هدر های جدول ایجاد شده و جدول نمایش داده می شود. البته یک هدر در این جدول وجود داشته که avg هست با تشکر از آقای چاجی که در نحوه نمایش صحیح مقادیر جدول کمک کردند .<br/> .<br/>
</div>.

```
% ---------------------table----------
T = array2table(g,'VariableNames', {'avg'})

h={'avg'};

f=figure;
t=uitable(f,'data',g,'columnname',h);
```


![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/13/q13png.png)

