> # Exercise 5
>یک تصویر کوزه ی ناقص رو کاغذ بکشید و تصویر آن را با کمک نرم افزار متلب کامل کنید؛ در واقع 
تقارن تصویر را به تصویر اصلی بچسبانید و یک کوزه ی کامل ایجاد کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear;
image1=imread("nim.png"); %koze asli
[x,y,z]=size(image1);
image2 = zeros(x, y, z,'uint8'); %koze gharine
for i=1:x
   for j=1:y
        image2(i,y+j,:)=image1(i,y-j+1,:);
       image2(i,j,:) = image1(i,j,:);
   end
end
figure;
imshow(image1);
figure;
imshow(image2);
```
****
![result](https://user-images.githubusercontent.com/79658260/114691356-d43fb980-9d2c-11eb-896b-14c806d0aae1.png)






<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>. <br />
<b>3</b>..<br />
<b>4</b>. 
    
</div>

