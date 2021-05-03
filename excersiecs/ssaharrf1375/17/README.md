
> # Exercise 17
> آسمان تصویر mountain.png را سیاه رنگ کنید.
***
>CODE

<div dir="rtl">
خواندن تصویر منظره
</div>

```ruby
image =imread('C:\Program Files\Polyspace\R2019b\bin\img\mountain.png');
```

<div dir="rtl">
حرکت در سطر و ستون عکس و قسمت های مورد نظر که میرسد را مشکی می کند(با وجود شرایط لازم در فور های قرار داده شده)
</div>

```ruby
for j=1:640   %tool
    for i=1:148    %arz
        if 150<image(i,j)
            image(i,j)=0;
        end
        if 150>image(i+1,j)
            break;
        end
    end
end
```

<div dir="rtl">
نمایش تصویر کامل شده با آسمان مشکی
</div>

```ruby
image=uint8(image);
figure;
imshow(image);
```

![17](https://user-images.githubusercontent.com/57560004/116750213-59a6b780-aa17-11eb-948c-2c334eeeae9a.jpg)

***
