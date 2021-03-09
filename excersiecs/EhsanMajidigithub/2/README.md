<div dir="rtl" >
  
## سوال 2:

**** برنامه ای بنویسید که یک عدد را به عنوان شعاع دایره و یه عدد را به عنوان مکان رسم دایره از بگیرد و در یک تصویر 1000*1000 پیکسل مشکی رنگ آن دایره را با رنگ سفید نمایش دهد.؟**؟**

</div>

```
clear all;
close all;
clc;

X = input('Enter X-axis: ');
Y = input('Enter Y-axis: ');
R = input('Enter radius: ');

img=zeros(1000,1000,1,'uint8');
imshow(img);


theta=0:pi/20:2*pi;  
Circle1=X+R*cos(theta);  
 Circle2=Y+R*sin(theta);
    
 hold on
 plot(Circle1,Circle2,'m','linewidth',1.5);
 hold off
 ```
