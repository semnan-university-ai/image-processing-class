> # Exercise 14
>یک دیتاست تصویری از 12 ساعت مختلف یک شبانه روز ایجاد کنید و این تصاویر را به grayscale تبدیل کنید و هیستوگرام هر کدام را با یکدیگر مقایسه کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

imageList =dir('nature/*.png');

for k =1:12
        name =imageList(k).name; % لیست عکس ها را میخواند
        image=imread(name);% بارگزاری عکس ها
        image=rgb2gray(image);% تبدیل به خاکستری
        subplot(6,2,k)% رسم نمودار ها در ساب پلات
        imhist(image);% نمایش هیستوگرام عکس ها
        
end
```
****
![image](https://user-images.githubusercontent.com/48456571/113308216-32c36b80-931b-11eb-887f-1843d12aa4c0.png)

