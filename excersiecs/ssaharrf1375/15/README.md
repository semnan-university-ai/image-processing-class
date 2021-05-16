> # Exercise 15
> ابتدا تصویر pool.png را به grayscale تبدیل کنید و سپس توپ زرد را از تصویر حذف کنید.
***
>CODE

<div dir="rtl">
خواندن تصویر و اعمال نویز فلفل و نمک روی تصویر و نمایش آن
</div>

```ruby
image_pool = imread('C:\Program Files\Polyspace\R2019b\bin\img\pool.png');
noise_pool = imnoise(image_pool,'salt & pepper');
subplot(2,2,1); imshow(noise_pool);
```

<div dir="rtl">
تغییر تصویر رنگی به خاکستری و نمایش آن
</div>

```ruby
image_grayscale = rgb2gray(image_pool);
subplot(2,2,2); imshow(image_grayscale);
```

<div dir="rtl">
بررسی سایز تصاویر
</div>

```ruby
[x,y] = size(image_grayscale);
```

<div dir="rtl">
بررسی تصویر و مخفی کردن توپ زرد که در تصویر خاکستری سفید شده است
</div>

```ruby
for i=230:x
    for j=360:y
        if(image_grayscale(i,j) > 1)
            image_grayscale(i,j) = 50;
        end
    end
end
```

<div dir="rtl">
نمایش تصویر کلی
</div>
```ruby
subplot(2,2,3); imshow(image_grayscale);
```

![15](https://user-images.githubusercontent.com/57560004/116749066-a5f0f800-aa15-11eb-9628-5ccea421e97a.jpg)

***
