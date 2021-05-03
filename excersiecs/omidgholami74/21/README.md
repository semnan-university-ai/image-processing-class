> # Exercise 21
>رنگ های موجود در یکی از تصاویر benchmark را به انتخاب خودتان به safe color تبدیل کنید.
***
>CODE

Main Program

 <div dir="rtl">
بار گزاری عکس و نمایش عکس اصلی 
 </div>

```ruby
pic=imread('benchmark/sails.png');
figure;imshow(pic);title('Original');
[height,width,k]=size(pic);
```

<div dir="rtl">
 ایجاد حلقه برای دسترسی به هر پیکسل از عکس و ایجاد بازه های 50 تایی برای کوانتزیه کردن(بسته بندی) کردن رنگ ها
 </div>

```ruby
for i=1:height
    for j=1:width
            pic(i,j,:)=floor(pic(i,j,:)/51)*51;
    end
end 
```

 <div dir="rtl">
نمایش عکس safe color 
 </div>

```ruby
pic=uint8(pic);
figure;imshow(pic);title('safe color')
```
****

<div dir="rtl">
 خروجی
  </div>

![image](https://user-images.githubusercontent.com/48456571/116530955-dd678380-a8f3-11eb-85f9-0c89980e7a91.png)
