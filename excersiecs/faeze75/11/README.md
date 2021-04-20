> # Exercise 11

***
>CODE

```ruby
clc
clear
close all

image=imread('lena.png');  % تصویر را خوانده
size=(size(image));        %سایز آن را بدست می آوریم
colors=[0 255];            %یک ماتریس رنگ تنها با دو مقدار سیاه و سفید میسازیم
if size(3)==3              % در صورتی که تصویر رنگی باشد آن را به تصویر خاکستری تبدیل میکنیم            
    image=rgb2gray(image);
end

for i=1:10000             %تعداد نویز ها را 10000  در نظر میگیریم و به صورت رندوم پیکسل هاییکه انتخاب میشوند مقدار سیاه یا سفید میگیرند
    x=randi( size(1));
    y=randi( size(2));
    image(x,y)=colors(randi(2));
 
end
 imshow(image)

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/11/Screenshot%20(29).png)
***
<div dir="rtl">

</div>



