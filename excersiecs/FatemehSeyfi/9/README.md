> # تمرین 9
>یبرنامه ای بنویسید که یک طول و عرض را مشخص کرده و سپس یک تصویر را crop کند.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;


width_x = input('Enter width : ');
length_y = input('Enter length : ');
image = imread("benchmark/pool.png");
figure
imshow(image);

imgcrop = imcrop(image,[width_x length_y length_y  width_x]);
figure

imshow(imgcrop);
```
****
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/9/q9.png)




<div dir="rtl">

<b>4</b>این برنامه با دریافت طول  و عرض از کاربر با استفاده از دستور به نقاط مشخص شده برش داده مس شود.    imcrop  
    
</div>

