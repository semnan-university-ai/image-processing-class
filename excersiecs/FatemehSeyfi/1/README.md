> # سوال 1
>برنامه ای بنویسید که با دریافت یک طول و عرض به عنوان مقدار طول و عرض تصویر یک صفحه ی شطرنج ایجاد کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear;

m=input("please enter width:");
n=input ("please enter length:");
a=chessboard(m,n);
imshow(a);
function[a]= chessboard(m,n)
for i=1:1:m
    for j=1:1:n
        if mod((i+j),2)==0
            a(i,j)=0;
        else
            a(i,j)=255;
        end
       
    end
        
end

end

```
****![alt](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/1/q1.png)

<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.مقدار طول و عرض و اندازه مربع ها رو از ورودی دریافت می کنیم<br />
<b>2</b>.دو حلقه تعریف میکنیم که با دریافت طول و عرض یک صفحه شطرنجی ایجا میکند  <br />
<b>3</b>. در نهایت با پیمایش کل صفحه خانه هایی که مقدار صفر داشته باشند با رنگ سیاه و خانه های با مقدار یک را با رنگ سفید ایجاد میکنیم .<br />

</div>


