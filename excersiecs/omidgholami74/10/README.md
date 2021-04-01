> # Exercise 10
> بدون استفاده از دستوران متلب یک کپچای تصویری را بکشید؛ اعداد را با تابع عدد تصادفی ایجاد کنید و سپس با توجه به اعداد بدست آمده برای هر یک در تصویر پیکسل های مورد نظر را رسم کنید؛ تصویر باینری باشد و اعداد رنگ سفید و پیش زمینه رنگ مشکی داشته باشد.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;


image =e10_captcha(8);
imshow(image);

```
****
captcha function
```ruby
function imageOut = e10_captcha(numbers)
%E10_CAPTCHA Summary of this function goes here
%   Detailed explanation goes here


files =dir('numbers/*.png');
blankImage=[];

for k =1:numbers
    temp=zeros(100,100);
    rand=randi(9);
    deg=randi(360);
        name =files(rand).name;
       image=imread(name);
%        path=strcat('numbers/',name)
%        image=e8_rotate(path,deg);
%        temp=image;
%        size(temp)
       blankImage =cat(2,blankImage,image);
end

imageOut= blankImage;
```
***
![image](https://user-images.githubusercontent.com/48456571/113303670-90a18480-9316-11eb-93b1-b69485a99fd8.png)



<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>

