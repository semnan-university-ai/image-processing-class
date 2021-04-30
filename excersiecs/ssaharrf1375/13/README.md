
> # Exercise 13
> روی یک تصویر نگاتیو نویز فلفل نمکی را با اعداد مختلف امتحان کنید و میانگین تمام پیکسل های آن را در یک جدول خروجی دهید.
***
>CODE

<div dir="rtl">
خوانئن تصویر
</div>

```ruby
image_boat = imread('C:\Program Files\Polyspace\R2019b\bin\img\boat.png');
```

<div dir="rtl">
اعمال نویز با 0.05 درصد و نمایش آن
</div>

```ruby
noise_boat = imnoise(image_boat,'salt & pepper',0.05);
subplot(2,2,1); imshow(noise_boat);
```

<div dir="rtl">
اعمال نویز با 0.1 درصد و نمایش آن
</div>

```ruby
noise_boat = imnoise(image_boat,'salt & pepper',0.1);
subplot(2,2,2); imshow(noise_boat);
```

<div dir="rtl">
اعمال نویز با 0.25 درصد و نمایش آن
</div>

```ruby
noise_boat = imnoise(image_boat,'salt & pepper',0.25);
subplot(2,2,3); imshow(noise_boat);
```

<div dir="rtl">
اعمال نویز با 0.5 درصد و نمایش آن
</div>

```ruby
noise_boat = imnoise(image_boat,'salt & pepper',0.5);
subplot(2,2,4); imshow(noise_boat);
```

![13](https://user-images.githubusercontent.com/57560004/116747312-f1ee6d80-aa12-11eb-8bdc-52e32211d24c.jpg)

***
