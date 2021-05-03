
> # Exercise 16
> چشم های تصویر zelda.png را حذف کنید.
***
>CODE

<div dir="rtl">
خواندن تصویر و نمایش آن
</div>

```ruby
image_zelda =imread('C:\Program Files\Polyspace\R2019b\bin\img\zelda.png');
subplot(1,2,1); imshow(image_zelda);
```

<div dir="rtl">
دادن مختصات چشم چپ و راست چهره درون عکس
</div>

```ruby
eleft=[208 269 231 251 262 269 233 280];
eright=[302 270 326 251 348 266 329 278];
```

<div dir="rtl">
مختصات داده شده از چشم ها و مشکی کردن ناحیه چشم ها
</div>

```ruby
image_zelda = insertShape(image_zelda,'FilledPolygon',{eleft,eright},'Color',[0 0 0],'Opacity',1);
subplot(1,2,2); imshow(image_zelda);
```

![16](https://user-images.githubusercontent.com/57560004/116750026-13e9ef00-aa17-11eb-86b6-79ba616588fc.jpg)

***
