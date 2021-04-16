


> # Exercise 21
>  Convert the colors of one of the benchmark image to safe color. 

***
>CODE

```ruby
close all
clear all
clc
pic=imread('benchmark\fruits.png');
subplot(1,2,1);imshow(pic);
title('Original Image')
n=size(pic);
for i=1:n(1)
    for j=1:n(2)
        for k=1:n(3)
            pic(i,j,k)=floor(pic(i,j,k)/51)*51;
        end
    end
end 
pic=uint8(pic);
subplot(1,2,2);imshow(pic);
title('Safe Color')
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/433ec483bb7e12c7994f2687a380fa21725e53e9/excersiecs/alirezachaji/21/Exce21.png)
***
<div dir="rtl">
توضیحات برنامه <br />
 توسط سه حلقه بر روی تمام پیکسل های تصویر حرکت کرده و اعداد بین 0 تا 255 را به بازه های 51 تایی تقسیم کرده و رنگ پیکسل را معادل آن قرار می دهیم. 
</div>
