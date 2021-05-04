
> # Exercise 8
> بدون استفاده از توابع آماده ی متلب یک تصویر را با 45،90،120،180 درجه بچرخانید؛ در تصاویری که چرخش تصویر باعث خارج شدن از حالت مربعی می شود پیکسل های خالی را برابر رنگ مشکی قرار دهید و پیکسل های خارج شده از محدوده را نادیده بگیرید.
***
>CODE

<div dir="rtl">
خواندن تصاویر
</div>

```ruby
image = imread('C:\Program Files\Polyspace\R2019b\bin\img\girl.png');
```

<div dir="rtl">
برای چرخاندن یک عکس، می توانید از تابع imrotate استفاده کرد
45 درجه چرخش
90 درجه چرخش
120 درجه چرخش
180 درجه چرخش
360 درجه چرخش
</div>

```ruby
rotate45_image = imrotate(image,45,'bicubic');
rotate90_image = imrotate(image,90,'bicubic');
rotate120_image = imrotate(image,120,'bicubic');
rotate180_image = imrotate(image,180,'bicubic');
rotate360_image = imrotate(image,360,'bicubic');
```

<div dir="rtl">
نمایش تصاویر کنار یک دیگر
</div>

```ruby
subplot(2,3,1); imshow(image);
subplot(2,3,2); imshow(rotate45_image);
subplot(2,3,3); imshow(rotate90_image);
subplot(2,3,4); imshow(rotate120_image);
subplot(2,3,5); imshow(rotate180_image);
subplot(2,3,6); imshow(rotate360_image);
```

![8](https://user-images.githubusercontent.com/57560004/116743737-991cd600-aa0e-11eb-95d3-23db328f0ec5.jpg)

***
