> # Exercise 16

***
>CODE

```ruby
image=imread('zelda.png');
for i=204:261
    for j=251:285
        image(j,i)=image(j-1,i);  %مختصات چشم راست را دریافت کرده و مقدارش  را با پیکسل های قبلی جایگزین میکند 
    end
end
for i=308:352
    for j=251:285
        image(j,i)=image(j-1,i);   % همان کار مرحله قبل را برای چشم چپ انجام میدهد
    end
end
figure,
imshow(image);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/16/Screenshot%20(25).png)
***
<div dir="rtl">
توضیحات برنامه <br />
مختصات چشم ها را دریافت کرده و با مقدار پیکسل قبلی جایگزین میکنیم
</div>
