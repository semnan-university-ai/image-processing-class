> # Exercise 14
>یک دیتاست تصویری از 12 ساعت مختلف یک شبانه روز ایجاد کنید و این تصاویر را به grayscale تبدیل کنید و هیستوگرام هر کدام را با یکدیگر مقایسه کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

List =dir('*.png');

for i =1:4
        name =List(i).name;
        image=imread(name);
        image=rgb2gray(image);
        figure;
        imhist(image);
        
end
```
****
![result](https://user-images.githubusercontent.com/79658260/116657751-2d9e1e80-a9a4-11eb-984a-120b59bcfb47.png)





<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>. ابتدا لیست عکس ها را میخواندو بارگزاری میکند<br />
<b>2</b>.به خاکستری تبدیل می شوند. <br />
<b>3</b>. نمودار  هیستوگرامشان رسم و در خروجی بصورت ساب پلات نمایش داده میشوند .<br />

</div>

