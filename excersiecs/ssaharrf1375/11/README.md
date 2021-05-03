
> # Exercise 11
> بدون استفاده از دستورهای آماده ی متلب نویز فلفل نمکی را روی چند تصویر ایجاد کنید.
***
>CODE

<div dir="rtl">
خواندن تصویر1 و اعمال نویز فلفل و نمکی و نمایش آن
</div>

```ruby
image_boat = imread('C:\Program Files\Polyspace\R2019b\bin\img\boat.png');
noise_boat = imnoise(image_boat,'salt & pepper');
subplot(2,2,1); imshow(noise_boat);
```

<div dir="rtl">
خواندن تصویر2 و اعمال نویز فلفل و نمکی و نمایش آن
</div>

```ruby
image_girl = imread('C:\Program Files\Polyspace\R2019b\bin\img\girl.png');
noise_girl = imnoise(image_girl,'salt & pepper');
subplot(2,2,2); imshow(noise_girl);
```

<div dir="rtl">
خواندن تصویر3 و اعمال نویز فلفل و نمکی و نمایش آن
</div>

```ruby
image_barbara = imread('C:\Program Files\Polyspace\R2019b\bin\img\barbara.png');
noise_barbara = imnoise(image_barbara,'salt & pepper');
subplot(2,2,3); imshow(noise_barbara);
```


<div dir="rtl">
خواندن تصویر4 و اعمال نویز فلفل و نمکی و نمایش آن
</div>

```ruby
image_lena = imread('C:\Program Files\Polyspace\R2019b\bin\img\lena.png');
noise_lena = imnoise(image_lena,'salt & pepper');
subplot(2,2,4); imshow(noise_lena);
```
![11](https://user-images.githubusercontent.com/57560004/116746905-6e348100-aa12-11eb-98b0-b402b0f79c9c.jpg)

***
