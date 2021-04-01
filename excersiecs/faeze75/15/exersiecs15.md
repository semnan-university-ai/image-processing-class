# Exercise 15



***
>CODE

```ruby
x=imread('pool.png');
imshow(x)
x=rgb2gray(x);
image=x;
x=230;
y=350;
l=150;
w=150;
for i=1:l
    for j=1:w
        
        image(x+j,y+i)=image(x+j-1,y+i);

    end
end
figure,
imshow(image);
```


![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/19/Screenshot%20(18).png)
***
<div dir="rtl">
توضیحات برنامه <br />
بعد از خاکستری کردن تصویر مقادیر x قسمت مشخص شده را با مقدار قبلی آن جایگزین میکنیم
</div>


