
> # Exercise 5
> یک تصویر کوزه ی ناقص رو کاغذ بکشید و تصویر آن را با کمک نرم افزار متلب کامل کنید؛ در واقع تقارن تصویر را به تصویر اصلی بچسبانید و یک کوزه ی کامل ایجاد کنید.
***
>CODE

<div dir="rtl">
خواندن نقاشی به شکل کوزه ناقص
</div>

```ruby
image=imread("koze.jpg");
```

<div dir="rtl">
بررسی سایز تصویر و دادن ابعاد
</div>

```ruby
[x_size,y_size,z_size]=size(image);
resimg = zeros(x_size, y_size*2, z_size,'uint8');
```

<div dir="rtl">
حلقه تو در تو برای حرکت در سطر و ستون ها
</div>

```ruby
for x=1:x_size
   for y=1:y_size
       resimg(x,y,:) = image(x,y,:);
       resimg(x,y_size+y,:)=image(x,y_size-y+1,:);
   end
end
```

<div dir="rtl">
نمایش کامل شده از تصویر کوزه
</div>

```ruby
imshow(resimg);
```
![5](https://user-images.githubusercontent.com/57560004/116740221-ef3b4a80-aa09-11eb-8546-96af9ab6347e.jpg)
***
