
> # Exercise 22
> کانال رنگی آبی و قرمز یک تصویر را با هم جابجا کنید و خروجی را نمایش دهید.
***
>CODE

<div dir="rtl">
خواندن تصویر
</div>

```ruby
image=imread("C:\Program Files\Polyspace\R2019b\bin\img\frymire.png");
subplot(2,1,1);
imshow(image);
```

<div dir="rtl">
شناسایی کانال های رنگی تصویر
</div>

```ruby
R = image(:,:,1);G = image(:,:,2);B = image(:,:,3);
```

<div dir="rtl">
بررسی سایز
</div>

```ruby
[size_r,size_c,size_z] = size(image);
image_result = zeros(size_r, size_c, size_z, 'uint8');
```

<div dir="rtl">
تغییر کانال های رنگی تصویر
</div>

```ruby
for r=1:size_r
   for c=1:size_c
       image_result(r,c,1)=B(r,c);
       image_result(r,c,2)=G(r,c);
       image_result(r,c,3)=R(r,c);
   end
end
```

<div dir="rtl">
نمایش تصویر تغییر کرده
</div>

```ruby
subplot(2,1,2);
imshow(image_result);
```

![22](https://user-images.githubusercontent.com/57560004/116752723-3ed64200-aa1b-11eb-91b0-39b99c59960a.jpg)


***
