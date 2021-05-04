

<div dir ="rtl">

تمرین 21:<br/>
    رنگ های موجود در یکی از تصاویر benchmark را به انتخاب خودتان به safe color تبدیل کنید.  
</div>

```
clc;
close all;
clear;
``` 
<div dir ="rtl">
ابتداتصویرمان را می خوانیم و  تغییر اندازه می دهیم و آنرا نمایش می دهیم .    <br/>
</div>

```
image=imread('benchmark\girl.png');
image=imresize(image,[300,300]);
figure;imshow(image);
title('Original Image')
```
<div dir ="rtl">

در این کد یک حلقه برای دسترسی به هر پیکسل  از تصویرمان  ایجاد می کنیم و یک بازه 50 تایی برای کوانتیزه کردن رنگ ها ایجاد می کنیم.
     <br/>
</div>

```
[x,y,z]=size(image);
for i=1:x
    for j=1:y
        for k=1:z
            image(i,j,k)=floor(image(i,j,k)/51)*51;
        end
    end
end 
```

<div dir ="rtl">
   نمایش خروجی تصویر   .<br/>
</div>

```

figure;imshow(image);
title('Safe Color')
   

```



![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/21/q21.png)



