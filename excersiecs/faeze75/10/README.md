> # Exercise 10

***
>CODE

```ruby
clear all
clc
clear;
f={};
x={};
ImagesList = dir('number\*.png');   % ادرس پوشه تصاویر را میگیرد
for i=1:9                           % تعداد تکرار حلقه برابر است با تعداد تصاویر داخل پوشه 
 f{i}=ImagesList(i).name;           % نام تصاویر را جدا میکند
 image=imread(f{i});                % تصاویر را فراخوانی میکند
 x{i}=image;                        %تمامی تصاویر خوانده شده را میریزم داخل x
end
 R=randi([0 9],1,4);               %در بازه 0-9 چهار عدد را به صورت رندوم انتخاب میکنیم
 finalImage=cat(2,x{R(1)},x{R(2)},x{R(3)},x{R(4)});  % تصاویر متناظر با اعداد انتخاب شده را کنار هم قرارا میدهیم و یک کپچا میسازیم
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/10/Screenshot%20(17).png)
***
<div dir="rtl">
توضیحات برنامه <br />
تصاویر 0-9  را خوانده و به صورت رندوم در کنار هم قرار میدهد
</div>
