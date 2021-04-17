
<div dir = "rtl">
    <h1> تمرین هفتم </h1>
</div>

<div dir="rtl">
پاک نمودن صفحه و workspace
</br>

</div>


````
clc;
clear;
close all;
````
<div dir="rtl">
در نظر گرفتن یک تصویر 500 در 500</br>

</div>

````
image=uint8(zeros(500,500));

````
<div dir="rtl">
 رسم مربع
</div>

````

image (20:220 , 20 : 220) = 255;

````

<div dir="rtl">
 رسم مستطیل
</div>

````
image (20: 150 , 230 : 470) = 255;

````

<div dir="rtl">

رسم مثلث
</div>

````
size = 200;
for i =250 : 250+size
    for j = 250:i
        image(i,j-220) = 255;
    end
end
````

<div dir="rtl">

رسم لوزی
</div>

````
start=[300,300];
size = 100;
y =0;
image(start(1),start(2)) = 255;
for i =1 : 50
       image(start(1)-i:start(1)+i,start(2)+y) = 255;
       y= y+1;
end
for i =50 : -1:1
       image(start(1)-i:start(1)+i,start(2)+y) = 255;
       y= y+1;
end
````
<div dir="rtl">

کد رسم شکل نهایی
</div>

````
imshow(image);


````

![image](/assets/result.jpg)

