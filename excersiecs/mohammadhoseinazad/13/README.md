
### question Info :

###### 13. روی یک تصویر نگاتیو نویز فلفل نمکی را با اعداد مختلف امتحان کنید و میانگین تمام پیکسل های آن را در یک جدول خروجی دهید.

open the code ex13.m with mathlab press **run** button :rocket: 

<div dir = "rtl">
عکس را گرفته و تغییرات نویز را اعمال می کند
</div>

```matlab
image=imread('D:\matlab\math\bin\benchmark\negativeex13.jpg');  
image=rgb2gray(image);

black=0;
white=255; 
change_black_to=4;
change_white_to=250;

[row,column]=size(image); 
x = randi([0,255],row,column);
image(x <= black) = change_black_to;  
image(x >=white) = change_white_to;
```

<div dir = "rtl">
میانگین مقدار پیکسل های عکس جدید را محاسبه میکند و در کنسول نمایش داده می شود در اینجا79.48 می باشد
</div>

```matlab
meanIntensity = mean(image(:));
imshow(image)
disp(meanIntensity)

```

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/13/ex13.png)

