> # Exercise 23
> بدون استفاده از توابع آماده ی متلب هیستوگرام هر یک از کانال های رنگی یکی از تصاویر را به صورت جداگانه محاسبه کنید. کدهای هیستوگرام را تبدیل به یک تابع در فایل جداگانه کنید و برای هر سه کانال رنگی آن را فراخوانی کنید.
***
>CODE

<div dir="rtl">
خواندن تصویر مورد نظر و نمایش آن
</div>

```ruby
image = imread("img\cat.png");
figure,imshow(image);
```

<div dir="rtl">
جدا کردن کانال های رنگی از یک دیگر
</div>

```ruby
r = image(:,:,1);
g = image(:,:,2);
b = image(:,:,3);
```

<div dir="rtl">
نمایش دادن هیستوگرام هر یک از کانال های تصویر مورد نظر
</div>

```ruby
histogram(r);
subplot(3,1,1);bar(ans);
title('R');
histogram(g);
subplot(3,1,2);bar(ans);
title('G');
histogram(b);
subplot(3,1,3);bar(ans);
title('B');
```

<div dir="rtl">
در این قسمت فانکشنی تعریف می شود که بتوان هیستوگرام هر کانال را از تصویر جداگانه بررسی کرد
</div>

```ruby
function [colours] = histogram(image)
    [x,y] = size(image);
    colours = zeros(1,256);
```

<div dir="rtl">
تعریف حلقه تو در تو برای بررسی کردن هر پیکسل برای جداسازی کانال های آن
</div>

```ruby
for i=1:x
        for j=1:y
          z = image(i,j);
          colours(z + 1) = colours(z + 1) + 1;
        end
    end
end
```

![2](https://user-images.githubusercontent.com/57560004/117008042-91577d00-acff-11eb-9e3d-e0aad5dd8b14.jpg)

***
