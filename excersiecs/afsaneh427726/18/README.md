
> # Exercise 18
> سفید کردن صفحه سفید ساعت
***
>CODE

```ruby

image=imread('C:\Users\as\Downloads\watch.png');
```

 <div dir="rtl">
ابتدا کانال های رنگی تصویر راجدا کرده
 </div>

```ruby
R = image(:, :, 1);
G = image(:, :, 2);
B = image(:, :, 3);
```
 <div dir="rtl">
با استفاده از دستور زیر مختصات صفحه ساعت را تعیین کرده
 </div>

```ruby
imtool(image);

```
 <div dir="rtl">
مقدار پیکسل های مربوط به رنگ صفحه ساعت را سفید می کنیم
 </div>
 
```ruby
k=0;
for j=333:694
    for i=295:586
        if (R(i,j)< 100) &&(R(i,j)> 81) && (abs((G(i,j)-B(i,j)))< 2) 
            image(i,j,1:3) = 255;
       end

```
 <div dir="rtl">
مقدار پیکسل های مربوط به شماره ساعت را سفید می کنیم
 </div>

```ruby     
        if (R(i,j)< 15) 
            image(i,j,1:3) = 255;
       end
        end
    end
    
imshow(image);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/18/18.jpg)
***


