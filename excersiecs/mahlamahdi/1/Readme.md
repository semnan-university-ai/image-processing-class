
<div dir = "rtl">
    <h1> تمرین اول </h1>

    </div>

<div dir="rtl">

 دریافت تعداد سطر و ستون صفحه شطرنجی
</div>

````
clc
clear
close all
row = input('Number of Row: ');
colum = input('Number Of Column:');
````
<div dir="rtl">
2. یک تصویر با مقدار اولیه صفر (مشکی) به طول عرض مورد نظر بر اساس اطلاعات مرحله قبل ایجاد میشود
</div>

````
image = zeros(size*row,size*cloum);
````
<div dir="rtl">
3. حلقه ای برای حرکت عمودی تعریف کرده و با یک شرط زوج یا فرد بودن سطر مورد نظر را تعیین می کنیم
</div>

````
for y=1 : row 
    if (mod( y , 2 )) == 0 
        z=size;
    else
        z=1;
    end
````
<div dir="rtl">
4. در حلقه بعدی در داخل حلقه قبل ابتدا حلقه ای برای حرکت افقی تعریف کرده و در آن موقعیت با دو حلقه تودر تو مربع مربوطه سفید می شود
</div>

````
for x=1 : 2: cloum-1 
        
        for i=w : w+size 
            for j=z : z+size
                image(i,j)=255;
            end
        end
        z=z+(size*2);
    end
````
<div dir="rtl">
5. در پایان تصویر نهایی نمایش داده میشود
</div>

````
imshow(image);

````
