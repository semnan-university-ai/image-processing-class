# Exercise 15



***
>CODE

```ruby
x=imread('pool.png');   %تصویر را می خواند 
imshow(x)
x=rgb2gray(x);          % تصویر را خاکستری میکند 
image=x;
x=230;.                  %مختصات توپ 
y=350;
l=150;
w=150;
for i=1:l
    for j=1:w
        
        image(x+j,y+i)=image(x+j-1,y+i);  %مقدار پیکسل های قبلی را جایگزین  پیکسل فعلی میکنیم

    end
end
figure,
imshow(image);
```


![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/15/Screenshot%20(23).png)
***
<div dir="rtl">
توضیحات برنامه <br />
بعد از خاکستری کردن تصویر مقادیر x قسمت مشخص شده را با مقدار قبلی آن جایگزین میکنیم
</div>


