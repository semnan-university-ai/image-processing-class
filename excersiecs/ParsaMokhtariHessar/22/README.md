# تمرین 22


<div dir="rtl">
 خواندن تصویر
</div>


```
image = imread("../../../Benchmark/baboon.png");
```

<div dir="rtl">
 ساختن متغییر نگهدارنده نتیجه
</div>

```
imageResult = zeros(size(image));
```

<div dir="rtl">
 ریختن کانال قرمز(1) در کانال آبی(3)
</div>

```
imageResult(:,:,3) = image(:,:,1);
```

<div dir="rtl">
 ریختن کانال آبی (3) در کانال قرمز (1)
</div>

```
imageResult(:,:,1) = image(:,:,3);
```

<div dir="rtl">
 ریختن کانال سبز(2) در کانال سبز(2)
</div>

```
imageResult(:,:,2) = image(:,:,2);
```

<div dir="rtl">
 نمایش عکس
</div>

```
figure,imshow(uint8(imageResult));
imsave;
```

[picture](../../../benchmark/baboon.png)
[output](t22.png)


<div dir="rtl">
 همانگونه که میبینید مکان هایی که سابقا قرمز بود الان تبدیل به آبی شده است.
</div>
