
> # Exercise 2
> برنامه ای بنویسید که یک عدد را به عنوان شعاع دایره و یه عدد را به عنوان مکان رسم دایره از بگیرد و در یک تصویر 1000 * 1000 پیکسل مشکی رنگ آن دایره را با رنگ سفید نمایش دهد.
***
>CODE

<div dir="rtl">
با استفاده از این تابع، می توانیم ماتریس یا آرایه با اندازه دلخواه بسازیم و آن را با صفر پرکنیم. یکی از اصلی ترین کاربردهای این تابع، اختصاص حافظه و آماده سازی برای اجرای برنامه هاست.
</div>

```ruby
image = zeros(1000,1000);
```

<div dir="rtl">
گرفتن مقدار از فرد برای شعاع دایره
</div>

```ruby
r = input('radius= ');
```
<div dir="rtl">
وارد کردن x و y مرکز دایره 
</div>

```ruby
xcenter = input('x center= ');
ycenter = input('y center= ');
```

<div dir="rtl">
محاسبه دلتا و محاسبه مقادیر x و y
</div>

```ruby
thelta = linspace(0,2*pi);
x = r*cos(thelta) +xcenter;
y = r*sin(thelta) +ycenter;
plot(x,y,'w','LineWidth',5)
axis equal;
```
![2](https://user-images.githubusercontent.com/57560004/116736629-61f5f700-aa05-11eb-82c4-757d2f7fc6f5.jpg)

***
