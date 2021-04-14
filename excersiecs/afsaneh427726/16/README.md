
> # Exercise 16
> حذف چشم های تصویر
***
>CODE


```ruby
تصویر را از ورودی می خوانیم
  

a=imread('C:\Users\as\Downloads\zelda.png');

مختصات چشم هارا با استفاده از دستور زیر پیدا می کنیم

  imtool(a)
  
  در مختصات داده شده رنگ های چشم ها را به 130 و140 تغییر می دهیم.
  
for i=1:383
    for j=1:510
        if (i>254 && i<290 && j>208 && j<265)
            a(i,j)=130;
        end
        if  (i>249 && i<285 && j>302 && j<360)
            a(i,j)=140;
        end
    end
end
imshow(a);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/16/16.jpg)
***


