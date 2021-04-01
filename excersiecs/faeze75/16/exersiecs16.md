> # Exercise 16

***
>CODE

```ruby
image=imread('zelda.png');
for i=204:261
    for j=251:285
        image(j,i)=image(j-1,i);
    end
end
for i=308:352
    for j=251:285
        image(j,i)=image(j-1,i);
    end
end
figure,
imshow(image);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/new/main/excersiecs/faeze75)
***
<div dir="rtl">
توضیحات برنامه <br />
مختصات چشم ها را دریافت کرده و با مقدار پیکسل قبلی جایگزین میکنیم
</div>
