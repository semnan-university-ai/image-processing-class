> # Exercise 13

***
>CODE

```ruby
z=zeros(1,2);
x={10 100 1000 100000};
avg=0;
for i=1:length(x)
   A=func('lena.png',x{i});
   z(i)=A;
end
function avg=func(add,ps)
image=imread('lena.png');
Ssize=size(image);
colors=[0 255];
if Ssize(3)==3
    image=rgb2gray(image);
    
end
image=255-image;
for i=1:10
    x=randi( Ssize(1));
    y=randi( Ssize(2));
    image(x,y)=colors(randi(2));
 
end

avg =round( mean(mean(image)));

imshow(image)
end
```
![alt text]()
***
<div dir="rtl">
توضیحات برنامه <br />
ابتدا تصویر و مقدار نویز را له تابه میدهیم و سپس تابع در ابتدا اگر تصویر خاکستری نباشد آن را به خاکستری تبدیا میکند و سپس ان را به نگاتیو تبدیل میکند و نویز فلف و نمکی را بر آن اعمال میکند و در اخر هم میانیگین تمام پیکسل ها را به ما نمایش میدهد 
</div>
