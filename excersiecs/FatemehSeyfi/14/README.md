
<div dir ="rtl">

تمرین 14:<br/>
    یک دیتاست تصویری از 12 ساعت مختلف یک شبانه روز ایجاد کنید و این تصاویر را به grayscale تبدیل کنید و هیستوگرام هر کدام را با یکدیگر مقایسه کنید
</div>

```
clc;
close all;
clear;
``` 
<div dir ="rtl">
در این کدپوشه تصویرمان که images   هست با کمک حلقه for هر 12 تا تصویرمان به ترتیب خوانده می شود.    <br/>
</div>

```
m=1;
for n=1:12
        images=imread("images/"+int2str(n)+".jpeg"); 
 
```
<div dir ="rtl">
تصاویر خاکستری می شوند  . <br/>
</div>

```
   image=rgb2gray(images); 

```

<div dir ="rtl">
   نمایش عکس ها   .<br/>
</div>

```
  subplot(4,6,m)
        imshow(image);          
        title("Image "+int2str(n));
```
<div dir ="rtl">
    <br/>نمایش هیستوگرام عکس ها 
   همان طور که مشاهده می کنید هر چه به غروب نزدیک تر می شویم  تصویر تارتر شده وپیکسل های هموارشده  مان به  سمت صفر می روند ویک جا جمع می شوند  .<br/>
</div>
```
        subplot(4,6,m+1)
        imhist(image);       
        title("Histogram "+int2str(n));
        m=m+2;  
end
```


![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/14/q14.png)

