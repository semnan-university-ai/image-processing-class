> # Exercise 24
> کانال رنگی قرمز تصویر watch.png را با کانال رنگی قرمز تصویر pool.png جا به جا کنید و خروجی هر دو را نمایش دهید.
***
>CODE

<div dir="rtl">
دو تصویر ساعت و 
</div>

```ruby
pic1 = imread('C:\Program Files\Polyspace\R2019b\bin\img\watch.png');
pic2 = imread('C:\Program Files\Polyspace\R2019b\bin\img\pool.png');
```

<div dir="rtl">
تصاویر مورد نظر را کنار یکدیگر چاپ می کند
</div>

```ruby
subplot(2,2,1); imshow(pic1);
subplot(2,2,3); imshow(pic2);
```

<div dir="rtl">
سایز هر عکس را در نظر می گیرد
</div>

```ruby
sizePic1= size(pic1);
sizePic2= size(pic2);
```

<div dir="rtl">
شرطی قرار داده می شود تا بتوان سایز عکس ها را بررسی کند و نسبت به آن ها عمل کند
</div>

```ruby
if sizePic1(1)> sizePic2(1)
    pic2=imresize(pic2,[sizePic1(1),sizePic1(2)]);
else
    pic1=imresize(pic1,[sizePic2(1),sizePic2(2)]);
end 
```

<div dir="rtl">
در این قسمت کانال های قرمز را برای عکس ها حجا به جا می کنید
</div>

```ruby
tempImage= pic1(:,:,1);
pic1(:,:,1) = pic2(:,:,1);
pic2(:,:,1)=tempImage;
```

<div dir="rtl">
در این قسمت تصاویر تغییر یافته نیز چاپ می شود و شما می توانید چهار تصویر را کنار یکدیگر مشاهده کنید
</div>

```ruby
subplot(2,2,2); imshow(pic1);
subplot(2,2,4); imshow(pic2);
```

![تمرین 2 سوال 24](https://user-images.githubusercontent.com/57560004/117009741-535b5880-ad01-11eb-99d2-67e9f18eb884.jpg)

***
