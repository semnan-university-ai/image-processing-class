![result2](https://user-images.githubusercontent.com/79658260/115950051-2c757900-a4ee-11eb-8cda-60dffe0e5222.png)
> # Exercise 11
>بدون استفاده از دستورهای آماده ی متلب نویز فلفل نمکی را روی چند تصویر ایجاد کنید
***
>CODE

Main Program
```ruby
clc;
clear;
close ;
image1=rgb2gray(imread("peppers.png"));
image2=image1
for i=1:5000
    X=randi([1,size(image2,1)]);
    Y=randi([1,size(image2,2)]);
    image2(X,Y)=randi([0,1])*255;
figure;
imshow(image1);
figure;
imshow(image2);
```
****
![result](https://user-images.githubusercontent.com/79658260/115949873-229f4600-a4ed-11eb-9bae-8106d6126e84.png)

![result2](https://user-images.githubusercontent.com/79658260/115950083-66467f80-a4ee-11eb-827d-7dd9c920023b.png)



<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بصورت خاکستری بارگذاری میکنیم <br />
<b>2</b>.یک حلقه برای ایجاد نویز فلفل نمکی روی عکس میگذاریم![Uploading result2.png…]()<br />
<b>3</b>. <br />
<b>4</b>. 
    
</div>

