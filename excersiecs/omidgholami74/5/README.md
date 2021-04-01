
> # Exercise 4
>یک تصویر کوزه ی ناقص رو کاغذ بکشید و تصویر آن را با کمک نرم افزار متلب کامل کنید؛ در واقع تقارن تصویر را به تصویر اصلی بچسبانید و یک کوزه ی کامل ایجاد کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

image =imread('kozeh.bmp');
figure;
imshow(image);
image =rgb2gray(image);
figure;
imageSize=size(image);
imageBlack =zeros(imageSize(1,1),imageSize(1,2));
imageBlack=uint8(imageBlack);
for i=1:imageSize(1,1)
    for j=1:imageSize(1,2)
        imageBlack(i,j)=image(i,imageSize(1,2)-j+1);
    end
    
end
c =cat(2,image,imageBlack);
   imshow(c);    
```
****
![image](https://user-images.githubusercontent.com/48456571/113286183-16b2d080-9301-11eb-9e2c-c20d460345fd.png)



<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.یک ماتریس صفر با همان سایز عکس درست میکنیم <br />
<b>3</b>با استفاده از حلقه ها شمارش برعکس از انتها به ابتداری تصویر. تصویر برعکس را میکشیم.<br />
<b>4</b>. آرایه های بدیت آمده از عکس اصلی و عکس قرنیه را بهم میچسبانیم و نمایش میدهیم
</div>
