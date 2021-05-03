
> # Exercise 18
> سعی کنید صفحه ی ساعت تصویر watch.png را کاملا سفید کنید.
***
>CODE

<div dir="rtl">
خواندن تصویر ساعت و نمایش آن
</div>

```ruby
image_watch = imread('C:\Program Files\Polyspace\R2019b\bin\img\watch.png');
subplot(1,2,1);
imshow(image_watch);
```

<div dir="rtl">
انتخاب مختصات صفحه ساعت و نشان دادن آن با کادر سفید رنگ
</div>

```ruby
h=impoly(gca,[521,293;633,341;685,424;630,533;511,577;383,537;337,433;397,336]);
setColor(h,'white');
```

<div dir="rtl">
بررسی رنگ های تصویر
</div>

```ruby
R=image_watch(:,:,1);
G=image_watch(:,:,2);
B=image_watch(:,:,3);
k=90;
```

<div dir="rtl">
بررسی شرط های لازم برای بررسی رنگ های صفحه ساعت که لازم می باشد
</div>

```ruby
for arz=300:580  
    if k<0
        k=0;
    end
    for tol=337+k:685-k     
 
            if ~(R(arz,tol)>G(arz,tol) && G(arz,tol)>B(arz,tol))
                image_watch(arz,tol,:)=[255 255 255];
            end       
    end
    if arz<500
        k=k-1;
    elseif arz>560
        k=k+6;
    else
        k=k+1;
    end
end
```

<div dir="rtl">
نمایش تصویر صفحه ساعت
</div>

```ruby
subplot(1,2,2);
imshow(image_watch);
```

![18](https://user-images.githubusercontent.com/57560004/116750751-2e709800-aa18-11eb-861c-f4906ebd39ea.jpg)

***
