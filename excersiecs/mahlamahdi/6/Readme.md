<div dir = "rtl">
    <h1> تمرین ششم </h1>
</div>

<div dir="rtl">
 تصویر 300 در 300 ایجاد شده  و آن را تبدیل به uint8 می کنیم. </br>
با استفاده از متغیر a اندازه راه راه بودن را مشخص می نماییم.</br>

</br>

</div>


````
clc;
close all;
clear;

img= zeros(300,300);
img = uint8(img);
[m , n ] = size(img);
a =25;
for i = 1:a:m
       img(i:i+a,1:n)=i;
end
imshow(img);
````
