> # Exercise 21

***
>CODE

```ruby
clear all
clc
clear;

***

image=imread('peppers.png');    %تصویر را میخواند
size=size(image);               %سایز تصویر را در یک ماتریس میریزد
for i=1:size(1)                 %یک حلقه توردرتو به ابعاد تصویر میسازیم و  رنگهایمان را به ازای هر 50 رنگ در یک بازه قرار میدیم و تنها یک مقدار  رنگ به آن تخصیص میدهیم
    for j=1:size(2)
        for k=1:size(3)
        if image(i,j,k)<=50
            image(i,j,k)=0;
        end
        if (image(i,j,k)>=51)&&(image(i,j,k)<=101)
                image(i,j,k) = 51;
        end
        if (image(i,j,k)>=102)&&(image(i,j,k)<=152)
                image(i,j,k) = 102;
        end
        if (image(i,j,k)>=153)&&(image(i,j,k)<=203)
                image(i,j,k) = 153;
        end
        if (image(i,j,k)>=204)&&(image(i,j,k)<=254)
                image(i,j,k) = 204;
        end
            if (image(i,j,k)==255)
                image(i,j,k) = 255;
            end
        end
    end
end
image=uint8(image);    %تصویر را به فرمت uint8 تبدیل میکند
imshow(image)

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/21/Screenshot%20(37).png)
***
<div dir="rtl">
توضیحات برنامه <br />
 تصویرsafe colorمان حاصل شش رنگ است که با دسته بندی 50 تایی بازه رنگها بدست امده است .
</div>

