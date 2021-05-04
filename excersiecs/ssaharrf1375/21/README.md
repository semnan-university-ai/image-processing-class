
> # Exercise 21
> رنگ های موجود در یکی از تصاویر benchmark را به انتخاب خودتان به safe color تبدیل کنید.
***
>CODE

<div dir="rtl">
خواندن تصویر و نمایش آن
</div>

```ruby
image=imread("C:\Program Files\Polyspace\R2019b\bin\img\pool.png");
subplot(2,1,1);
imshow(image);
```

<div dir="rtl">
بررسی سایز های تصویر
</div>

```ruby
img=image;
[x_size,y_size,z_size]=size(image);
```

<div dir="rtl">
نسبت به سایز داده شده و تغییر رنگ آن ها
</div>

```ruby
for i= 1:x_size
    for j =1:y_size
        for k=1:z_size
            img(i,j,k)=fix(image(i,j,k)/50)*100;
        end
    end
end
```

<div dir="rtl">
نمایش تصویر تغییر کرده
</div>

```ruby
subplot(2,1,2);
imshow(img);
```

![21](https://user-images.githubusercontent.com/57560004/116752039-274a8980-aa1a-11eb-9873-590a92d955fd.jpg)

***
