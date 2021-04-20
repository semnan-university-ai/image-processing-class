> # Exercise 13

***
>CODE

```ruby
z=zeros(1,2);                 %ساخت ماتریس صفر برای  مفادیر خروجی
x={10 1000 10000 90000};      %  تعداد نویز 
avg=0;
for i=1:length(x)             %در این حلقه چهار بار تابع فراخوانی میشود تا بر روی تصویر مقادیر مختلف نویز را اعمال کند
   A=func('lena.png',x{i});
   z(i)=A;
end
T = array2table(z,...         %ایجاد جدول میانگین  پیکسل  ها
    'VariableNames',{'av10','av1000','av10000','av90000'})
    
function avg=func(add,ps)     %ایجاد تابع برای اعمال نویز که دو ورودی میگیرد یکی تصویر و دومی مقدار نویز است
image=imread('lena.png');     %خواندن تصویر
Ssize=size(image);            %ذخیره سایز تصویر در یک متغیر
colors=[0 255];               %رنگ سیاه و سفید برای نویز
if Ssize(3)==3                %اگر تصویر رنگی باشد آن راب ه خاکستری تبدیل میکند
    image=rgb2gray(image);
    
end
image=255-image;              %تبدیل تصویر خاکستری به تصویر نگاتیو
for i=1:ps                    %به تعداد انتخاب شده برای مقدار نویز به صورت رندوم پیکسل هایی انتخاب میشوند و همچنین به صورت رندوم مقدار 0 یا 255 میگیرند
    x=randi( Ssize(1));
    y=randi( Ssize(2));
    image(x,y)=colors(randi(2));
 
end

avg = mean(mean(image));         %محاسیه میانگین پیکسل ها
figure,
imshow(image)
end
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/13/Screenshot%20(41).png)
***
<div dir="rtl">
توضیحات برنامه <br />
ابتدا تصویر و مقدار نویز را به تابه میدهیم و سپس تابع در ابتدا اگر تصویر خاکستری نباشد آن را به خاکستری تبدیل میکند و سپس ان را به نگاتیو تبدیل میکند و نویز فلف و نمکی را بر آن اعمال میکند و در اخر هم میانیگین تمام پیکسل ها را به ما نمایش میدهد 
</div>
