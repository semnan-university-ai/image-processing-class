
> # Exercise 17
> سیاه کردن آسمان تصویر کوه
***


 <div dir="rtl">
تصویر کوه رادریافت کرده
 </div>

```ruby
a=imread('C:\Users\as\Downloads\mountain.png');
```
 <div dir="rtl">
تمام ستون های تصویر  تا سطر 200که مربوط به آسمان است راپیمایش کرده و اگر مقدار پیکسل بیشتر از 150بود آن را سیاه می کنیم(مقدار پیکسل های آسمان بیشتراز 150 می باشد) 
 </div>

```ruby
for j=1:640
    for i=1:200
     if 150<a(i,j)
         a(i,j)=0;
     end
     if a(i+1,j)<150
         break;
     end
    end
end

imshow(a)
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/17/17.jpg)
***


