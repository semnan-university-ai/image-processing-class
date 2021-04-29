
> # Exercise 24
>کانال رنگی قرمز تصویر watch.png را با کانال رنگی قرمز تصویر pool.png جا به جا کنید و خروجی هر دو را نمایش دهید.
***
>CODE

Main Program
```ruby
clear all
clc;
close all;

watch = imread('benchmark/watch.png'); % بارگزاری عکس ساعت
pool= imread('benchmark/pool.png'); % بارگذاری عکس بیلیارد
watch=imresize(watch,[383 510]);   % تغییر سایز عکس ساعت
figure,imshow(watch); % نمایش عکس
figure,imshow(pool);% نمایش عکس
```
```ruby
redWatch=watch(:, :,1); % دریافت بعد قرمر ساعت
redPool=pool(:, :,1); % دریافت بعد قرمز بیلیارد
watch(:,:,1)=redPool(:,:,1);  % جابجایی بعد ها      
pool(:, :,1)=redWatch(:,:,1);% جا به جایی بعد ها
figure, imshow(watch);             
figure, imshow(pool);
```
****
![image](https://user-images.githubusercontent.com/48456571/116563033-ecacf800-a918-11eb-878d-b6b676753e86.png)

