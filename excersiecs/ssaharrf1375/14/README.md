
> # Exercise 14
> یک دیتاست تصویری از 12 ساعت مختلف یک شبانه روز ایجاد کنید و این تصاویر را به grayscale تبدیل کنید و هیستوگرام هر کدام را با یکدیگر مقایسه کنید.
***
>CODE

<div dir="rtl">
خواندن تصاویر درون پوشه image
</div>

```ruby
imageList =dir('C:\Program Files\Polyspace\R2019b\bin\image\*.png');
```

<div dir="rtl">
خواندن تصاویر به ترتیب
</div>

```ruby
for s =1:5
        name =imageList(s).name;
        image=imread(name);
        image=rgb2gray(image);
        subplot(2,3,s)
        imhist(image); 
end
```

![14](https://user-images.githubusercontent.com/57560004/116748555-e00dca00-aa14-11eb-92a7-a18472649ba5.jpg)

***
