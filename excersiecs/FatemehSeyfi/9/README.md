<div dir ="rtl">

تمرین 9:<br/>
        برنامه ای بنویسید که یک طول و عرض را مشخص کرده و سپس یک تصویر را crop کند. <br/>

</div>

```
clc;
close all;
clear;
```
<div dir ="rtl">
طول و عرض تصویر را از کاربر دریافت  می کند . <br/>
</div>

```
width_x = input('Enter width : ');
length_y = input('Enter length : ');
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
