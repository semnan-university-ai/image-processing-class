

#### 14. یک دیتاست تصویری از 12 ساعت مختلف یک شبانه روز ایجاد کنید و این تصاویر را به grayscale تبدیل کنید و هیستوگرام هر کدام را با یکدیگر مقایسه کنید.


###### کد:
</div>

```matlab
clc;
clear all;
close all;

for i=1:9
    image=imread(strcat("Resource\image",int2str(i),".png"));
    image=rgb2gray(image);
    subplot(4,6,i*2-1),imshow(image),title(strcat('image',int2str(i)));
    subplot(4,6,i*2),imhist(image),title(strcat('histogram',int2str(i)));
end
```

<div dir="rtl">

#### برسی کد:

1.
- حلقه for به تعداد تصاویر تکرار می شود .

</div>

```matlab
for i=1:9
```
<div dir="rtl">

2.
- در هر تکرار حلقه یک تصویر خوانده شده و در ماتریس image قرار می گیرد.
- تصویر رنگی به تصویر خاکستری تبدیل می شود.
</div>

```matlab
image=imread(strcat("Resource\image",int2str(i),".png"));
    image=rgb2gray(image);
```

<div dir="rtl">

3.
- در خط اول هر تصویر در subplot جهت نمایش قرار میگیرد.
- در خط دوم هیستو گرام هر تصویر در کنار آن در subplot جهت نمایش قرار میگیرد.
</div>

```matlab
subplot(4,6,i*2-1),imshow(image),title(strcat('image',int2str(i)));
    subplot(4,6,i*2),imhist(image),title(strcat('histogram',int2str(i)));
```

![Image of Yaktocat](Resulte.jpg)
