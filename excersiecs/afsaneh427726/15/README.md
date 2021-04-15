
> # Exercise 15
> حذف توپ زرد 
> 

 <div dir="rtl">
تصویر را خوانده و به خاکستری تبدیل می کنیم
 </div>

> CODE
```ruby
a=imread('C:\Users\as\Downloads\pool.png');
a=rgb2gray(a);

```
 <div dir="rtl">
با استفاده از دستور زیر مختصات توپ زرد را پیدا می کنیم
 </div>

```ruby
  imtool(a)
 ```
 
  <div dir="rtl">
 در مختصات توپ زرد پیکسل های مربوط به رنگ توپ زرد را به 48 که رنگ اطراف توپ هست تغییر می دهیم
  </div>
 
 ```ruby
for i=1:383
    for j=1:510
        if (i>235 && i<340 && j>355 && j<500)
            a(i,j)=48;
        end

    end
end
imshow(a);

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/15/15.jpg)

