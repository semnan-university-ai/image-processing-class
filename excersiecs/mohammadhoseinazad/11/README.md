
### question Info :

###### 11. بدون استفاده از دستورهای آماده ی متلب نویز فلفل نمکی را روی چند تصویر ایجاد کنید.

open the code ex10.m with mathlab press **run** button :rocket: 

choose the amount of black and white [0-255]

<div dir = "rtl">
عکس را گرفته خاکستری می کند و با توجه به سایزهای داده شده برای چک اگر بیشتر ویا کمتر باشد مقدار انتخابی توسط کاربر را جایگزین می کند
</div>

```matlab

image=imread('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\lena.png');  
image=rgb2gray(image);

black=input('enter black(0) pixel value=');
white=input('enter white(255) pixel value='); 
change_black_to=input('enter exchange pixel value for black pixel=');
change_white_to=input('enter black pixel for white pixel=');

[row,column]=size(image); 
x = randi([0,255],row,column);
image(x <= black) = change_black_to;  
image(x >=white) = change_white_to;
```

کد بهبود یافته 
improved code of (https://github.com/semnan-university-ai/image-processing-class/tree/main/excersiecs/nastaranm57/1/%D8%B4%D9%85%D8%A7%D8%B1%D9%87%2011)

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/11/ex11.png)

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/11/ex11-2.png)
