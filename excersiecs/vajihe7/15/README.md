> # Exercise 15
>ابتدا تصویر png.pool را به grayscale تبدیل کنید و سپس توپ زرد را از تصویر حذف کنید.
***
>CODE

Main Program
```ruby
close all
clear all
clc
image=imread("pool.png");
image=rgb2gray(image);
figure;
imshow(image)
for i=200:365
    for j=365:470
        image(i,j)=image(i-1,j);
    end
end
figure;
imshow(image)
```
****
![result](https://user-images.githubusercontent.com/79658260/116659455-dea5b880-a9a6-11eb-9eb1-6bb7fd7b4f23.png)





<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدا برنامه عکس را بارگذاری  و به خاکستری تبدیل میکنیم و در خروجی نمایش میدهیم<br />
<b>2</b>.در حلقه ایجاد شده مختصات محدوده ای که میخواهیم حذف کنیم را مشخص میکنیم  و آن قسمت از تصویر حذف میشود<br />
<b>3</b>. نمایش در خروجی.<br />
</div>


