<div dir = "rtl">
    <h1> تمرین دوم </h1>
</div>

<div dir="rtl">

 دریافت  مختصات مرکز دایره و شعاع دایره
</div>

````
clc
clear;
close all;

theta=linspace(0,2*pi);
a=input('Enter X: ');
b=input('Enter Y: ');
r=input('Enter R: ');

````
<div dir="rtl">
تبدیل مختصات قطبی به مختصات کارتزین 
    
</div>


````
x=r.*sin(theta)+a;
y=r.*cos(theta)+b;
img=zeros(1000,1000);
imshow(img);
hold on
plot(x,y);
hold off
````
