> # Exercise 2

***
>CODE

```ruby
clear all
clc
clear;

***
>>>get Circle Radius  ,(X , Y) position of Circle Center from user
***
R=0;
R=input('Please Enter Circle Radius   :');
x0=0;
x0=input('Please Enter X-Pos of Circle Center :');
y0=0;
y0=input('Please Enter Y-Pos of Circle Center  :');

img=zeros(1,2);

***
>>>Create a black image
***
for i=1:1:1000
    for j=1:1:1000
        img(i,j)=0;
    end
end


imshow(img)

hold on
***
>>>Create a white circle
***
Theta = 0:0.01:2*pi;
x = x0 + cos(Theta)' * R;
y = y0 + sin(Theta)' * R;
plot(x0,y0,'w*')
plot(x,y,'w','LineWidth',3)

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/scatter.png)
***
<div dir="rtl">
توضیحات برنامه <br />
در ابتدا برنامه از کاربر مقدار شعاع و مختصات  مرکز دایره گرفته میشود و در ادامه یک تصویر مشکی در ابعاد 1000*1000  ساخته میشود و همچنین  یک دایره با ورودی های دریافت شده بر روی تصویر مشکی ایجاد میشود.
</div>

