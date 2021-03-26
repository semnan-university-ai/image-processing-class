
### question Info :

###### 6. یک تصویر راه راه بسازید که از سمت بالا سیاه کامل و پایین آن سفید باشد.

open the code ex6.m with mathlab press **run** button :rocket: 

<div dir = "rtl">
یک ماتریس 255 عضوی ایجاد کرده 
و نسبت به اندازه هرعدد بر 255 به آن عددی اختصاص میدهد
</div>

```matlab
a=255;
plate=zeros(a);
for i = 1:a
    plate(i:i,1:a)=i/255;
end
imshow(plate);
```

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/6/ex6.png)
