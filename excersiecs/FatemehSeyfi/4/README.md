> # تمرین 4
>یک تصویر مربعی 500*500 ایجاد کنید که شامل بخش گوشه ی سمت راست و پایین تصاویر بنچ مارک ها باشد؛ از هر تصویر یک مربع 100*100 جدا کنید.

***
>CODE

Main Program
```ruby
close all;
clear all;
clc;


img = ones(500, 500, 3,'uint8');
for i=1:25
  image = imread("benchmark/peppers.png");
   if size(image,3) ==3
            image=rgb2gray(image);
  end
   [sx,sy,sz]=size(image);
   imgcut=image(sx-100:sx,sy-100:sy,:);
   if sz==1
       imgcut=cat(3,imgcut,imgcut,imgcut);
   end
   mo=mod(i-1,5)*100;di=fix((i-1)/5)*100;
   img(di+1:di+101,mo+1:mo+101,:)=imgcut(1:101,1:101,:);
end
imshow(img);
```
****
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/4/q4.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.ایجاد تصویر رنگی RGB با ایجاد ماتریس به ابعاد 500*500*3 با درایه یک <br />

<b>3</b>.    به ازای افزایش متغییر حلقه یکی از تصاویر با توجه به ادرس مسیر آنها در آرایه بار می شود<br />
<b>1</b>. قسمت گوشه پایین سمت راست تصویر جاری به اندازه 100x100 پیکسل جدا می شود<br />
<b>1</b>. در صورت رنگی نبودن تصویر سه کانال رنگ با مقادیر یکسان تصویر خاکستری پر می شود.<br />
<b>4</b>. موقعت ردیف و ستون قرار گیری این برش در تصویر نهایی مشخص می شود.وقسمت برش خورده در محل خود کپی می شود.
    
</div>

