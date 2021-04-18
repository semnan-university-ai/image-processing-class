
<div dir = "rtl">
  <h1> تمرین دوازدهم</h1>
  </div>
  
  ````
clc;
clear;
close all;

  ````
  <div dir = "rtl">
  خواندن تصویر و تبدیل کردن به خاکستری و به دست آوردن اندازه  عکس
  </div>
  
  ````
image = imread('airplane.png');
im = rgb2gray(image);
[m,n]=size(im); 

````

  <div dir = "rtl">
 ایجاد نویز فلفل نمکی
</div>

````
x = randi([0 ,255] , m ,n);
im(x<=0+2)=0;
im(x>=255-2)=255;

````

 <div dir = "rtl">
 
</div>

  
