
> # Exercise 11
> 
ایجاد نویز فلفل  نمکی با تولید اعداد رندوم به اندازه طول  عرض و تصویر و سفید و سیاه کردن پیکسل های انتخاب شده
***
>CODE

```ruby
 
در اینجا مقدار نویز قابل تغییر می باشد(m)

image=imread('C:\Users\as\Downloads\boat.png');
a=size(image);
for m=1:4000

تولید اعداد رندوم برای مشخص شدن طول و عرض پیکسل تغییر یافته

    i=randi(a(1));
    j=randi(a(2));
    image(i,j)=0;
end
for m=1:4000
    i=randi(a(1));
    j=randi(a(2));
    image(i,j)=255;
end

imshow(image);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/11/s%26p1.jpg)
***

    
