<div dir ="rtl">

تمرین 10:<br/>
        بدون استفاده از دستوران متلب یک کپچای تصویری را بکشید؛ اعداد را با تابع عدد تصادفی ایجاد کنید و سپس با توجه به اعداد بدست آمده برای هر یک در تصویر پیکسل های مورد نظر را رسم کنید؛ تصویر باینری باشد و اعداد رنگ سفید و پیش زمینه رنگ مشکی داشته باشد. <br/>

</div>

```
clc;
close all;
clear;
```
<div dir ="rtl">
این تکه کد تصویری به ابعاد50*200 ایجاد می کند.  <br/>
</div>

```
image=zeros(50,200);
```
<div dir ="rtl">
با این کد تصویر خوانده می شود و تصویر اولیه نمایش داده می شود. <br/>
</div>

```
addpath("benchmark");
image = imread("pool.png");
figure
imshow(image);

```

<div dir ="rtl">
با استفاده از تابع imcrop،تصویر را برش می دهد.باتوجه به طول وعرض داده شده .<br/>
</div>

```
imgcrop = imcrop(image,[width_x length_y length_y  width_x]);
```
<div dir ="rtl">
 نمایش تصویر crop شده.<br/>
</div>

```
figure

imshow(imgcrop);
```

![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/9/q9.png)
