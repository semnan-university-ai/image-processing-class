
<div dir ="rtl">

تمرین 15:<br/>
    ابتدا تصویر pool.png را به grayscale تبدیل کنید و سپس توپ زرد را از تصویر حذف کنید. 
</div>

```
clc;
close all;
clear;
``` 
<div dir ="rtl">
ابتداتصویرمان را می خوانیم وآن را به خاکستری تبدیل می کنیم.    <br/>
</div>

```
image=imread('benchmark\pool.png');
image1=rgb2gray(image);
image=rgb2gray(image);
```
<div dir ="rtl">
در این کد با توجه به مختصات داده شده  که توپ زرد ما قرار دارد  را حذف می کند    . <br/>
</div>

```
  for i=200:365
    for j=365:470
        image(i,j)=image(i-1,j);
    end
end

```

<div dir ="rtl">
   نمایش تصویر   .<br/>
</div>

```
subplot(1,2,1), imshow(image1);
title('old') 
subplot(1,2,2), imshow(image);
title('new') 

```



![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/15/q15.png)


