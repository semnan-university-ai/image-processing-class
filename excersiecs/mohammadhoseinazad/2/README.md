
### question Info :

###### 2. برنامه ای بنویسید که یک عدد را به عنوان شعاع دایره و یه عدد را به عنوان مکان رسم دایره از بگیرد و در یک تصویر 1000*1000 پیکسل مشکی رنگ آن دایره را با رنگ سفید نمایش دهد.

open the code ex2.m with mathlab press **run** button :rocket: 

enter `x` and `y` for sphere centre
you can change the resolution too with changing `plate` in the code

<div dir = "rtl">
تعیین ابعاد صفحه وشعاع و مرکز دایره
<div>

```
r = input('enter radius=');
x=input('enter x value for centre of sphere=');
y=input('enter y value for centre of sphere=');
m = {x,y}; 
plate(m{:})=1;
```

<div dir = "rtl">
این تابع  یک دیسک با شعاع آر را در صفحه محاط  میکند 
<div>

```
B = imdilate(plate,strel('disk', r,0) );
imshow(B)
```

<div dir = "rtl">
از کدهای زیر در سایت متلب استفاده شده است
<div>

contributed from (https://www.mathworks.com/matlabcentral/answers/12090-create-a-white-circle-or-sphere-inside-a-black-box)

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/2/ex2.png)
