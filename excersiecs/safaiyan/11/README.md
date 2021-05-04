#### tamrin 11 code:


```
img=imread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\benchmark\goldhill.png');
 
for i=1:1500
    a=randi([1,size(img,1)]);
    b=randi([1,size(img,2)]);
    img(a,b)=randi([0,1])*255;
end
imshow(img);

```
<div dir="rtl">
 
ابتدا تصویر را با دستور imread در متغیر img قرار میدهیم

به تعداد نویز هایی که میخواهیم ایجاد کنیم با استفاده از حلقه for دو عدد رندوم بین اندازه طول و عرض تصویر میگیریم 

و نقطه ای که با مختصات رندوم بدست آمده را سفید یا سیاه می کنیم
 
 در نهایت تصویر را نمایش می دهیم
 
</div>

![khorooji](result.jpg)
