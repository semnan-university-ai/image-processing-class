
> # Exercise 9
> برنامه ای بنویسید که یک طول و عرض را مشخص کرده و سپس یک تصویر را crop کند.
***
>CODE

<div dir="rtl">
خواندن تصویر مورد نظر
</div>

```ruby
image = imread('C:\Program Files\Polyspace\R2019b\bin\img\girl.png');
```

<div dir="rtl">
برش دادن قسمتی از تصویر
</div>

```ruby
[cropp_img,rect] = imcrop(image,[100 100 200 200]);
```

<div dir="rtl">
نمایش تصویر برش داده شده
</div>

```ruby
figure;
```

![9](https://user-images.githubusercontent.com/57560004/116745549-7e4b6100-aa10-11eb-86e4-f533d0679c8d.jpg)

***
