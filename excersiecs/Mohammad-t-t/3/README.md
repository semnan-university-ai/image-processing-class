## پاسخ تمرین سوک :
### برنامه ای بنویسید که بدون استفاده از توابع متلب تصاویر benchmark را به حالت خاکستری ببرد.

<div dir="rtl">
1. درمرحله اول تصویر مورد نظر را فراخوانی می کنیم و در یک متغییر ذخیره می کنیم
</div>

````
orginalPic=imread('girl.png');
````
<div dir="rtl">
2. اندازه نصویر دریافت شده را در یک متغییر ذخیره کرده و با استفاده از مولفه های اول و دوم آن یک تصویر با مقدار اولیه صفر (مشکی) به طول و عرض تصویر اصلی از نوع تک بایتی ایجاد می کنیم
</div>

````
picSize=size(orginalPic);
grayPic=zeros(picSize(1),picSize(2),'uint8');
````
<div dir="rtl">
3. در دوحلقه تودر تو تمامی خانه های تصویر مرور شده و بر اساساس فرمول استاندارد تبدیل رنگ به خاکستری (قرمز*0.299) و (سبز*0.587) و (آبی*0.144) عدد خاکستری محاسبه و در خانه متناظر قرار می گیرد
</div>

````
for i=1: picSize(1)
    for j=1 : picSize(2)
        grayPic(i,j)=(((orginalPic(i, j, 1)) * .299) + ((orginalPic(i, j, 2)) * .587) + ((orginalPic(i, j, 3)) * .144));
````
<div dir="rtl">
4. در پایان تصویر نهایی نمایش داده میشود
</div>

````
imshow(grayPic);
````
https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/Mohammad-t-t/3/result.jpg
