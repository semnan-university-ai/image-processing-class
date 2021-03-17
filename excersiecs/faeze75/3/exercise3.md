> # Exercise 3

***
>CODE

```ruby
clear all
clc
clear;

image=imread('airplane.png');
grayimage=0.299*image(:,:,1)+0.587*image(:,:,2)+0.114*image(:,:,3);
imshow(image)
figure;
imshow(grayimage)
```
![alt text]
***
<div dir="rtl">
توضیحات برنامه <br />
 مقادیر r,g,b تصویر را از هم جدا میکنیم و بعد هر مقدار را در ثابت متناسب با خود ضرب میکنیم خروجی یک تصویزر خاکستری است  .
</div>
