
> # Exercise 6
>یک تصویر راه راه بسازید که از سمت باال سیاه کامل و پایین آن سفید باشد
***
>CODE

Main Program
```ruby
clc;
close all;
clear;

a=256;
image=zeros(a*4);
for i = 1 : a
    image((i*4)+4 : (i*4)+6,1 : a*4)= i/a;
end
imshow(image);

```
****
![result](https://user-images.githubusercontent.com/79658260/115447876-3b2e0880-a22e-11eb-99b3-f96dcac1765b.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.یک تصویر خاکستری توسط ماتریسی با درایه صفر ایجاد کردیم<br />
<b>2</b>.با  هر بار اجرای حلقه سطر های ایجاد شده در تصویر روشنتر می شوند <br />
</div>
