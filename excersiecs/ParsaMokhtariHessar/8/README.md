# تمرین 2

<br />
<div dir="rtl">
    باعث می شود پس از هر بار اجرای برنامه پنجره ی فرمان ها پاک شود   
</div>

```
clc;
close all;
clear all;
```

<div dir="rtl">
   خواندن تصویر برای دوران دادن آن :  
</div> 

```
img = imread("../benchmark/zelda.png");
```
<div dir="rtl">
  بدست آوردن اندازه عکس و ریخت آن در متغییر های جزئی مر بوط به اندازه
</div>  
 
```
[rowsi,colsi,z]= size(img); 
```
<div dir="rtl">
    تعیین زاویه که باید در آن به ترتیب اعداد45و90و120و180 گذاشته شود . 
</div>  

```
angle=45;
```
<div dir="rtl">
  تبدیل نمودن درجه به رادیان
</div>

```
rads=2*pi*angle/360;  
```
<div dir="rtl">
 در این بخش می توانستیم با استفاده از فرمول های بالایی سایز عکس جدید را جوری تنظیم کنیم که در تصویر دوران شده جدید جای بگیرد ولی برای اینکه از ما خواسته نشده بود از استفاده از آنها صرفه نظر نمودیم و به جای آن سایز واقعی عکس را استفاده کردیم که بخشی از عکس  را از دست می دهد.
</div> 

```
%calculating array dimesions such that  rotated image gets fit in it exactly.
% we are using absolute so that we get  positve value in any case ie.,any quadrant.

% rowsf=ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
% colsf=ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));

 rowsf=rowsi;                      
 colsf=colsi;
```

<div dir="rtl">
  متغییر ماتریسی تصویر جدید را اینیشالایز می کنیم.
</div>

```
% define an array withcalculated dimensionsand fill the array  with zeros ie.,black
C=uint8(zeros([rowsf colsf 3 ]));
```
<div dir="rtl">
  مرکز تصویر ورودی و خروجی را محاسبه می کنیم.
</div>

```
%calculating center of original and final image
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);

midx=ceil((size(C,1))/2);
midy=ceil((size(C,2))/2);
```
<div dir="rtl">
  با توجه به مرکز بدست آمده با استفاده از حلقه تو در توی زیر مکان تفریبی (بعلت تابعround) هر پیکسل در تصویر دوران داده شده بدست آمده و در متغییر ماتریسی ریخته می شود.
</div>

```
% in this loop we calculate corresponding coordinates of pixel of A 
% for each pixel of C, and its intensity will be  assigned after checking
% weather it lie in the bound of A (original image)
for i=1:size(C,1)
    for j=1:size(C,2)                                                       

         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
              C(i,j,:)=img(x,y,:);  
         end

    end
end
```
<div dir="rtl">
 و سپس عکس را نمایش می دهیم.
</div>

```
imshow(C);
imsave;
```
[output](t8.png)
