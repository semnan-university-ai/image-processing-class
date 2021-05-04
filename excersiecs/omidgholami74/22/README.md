
> # Exercise 22
>کانال رنگی آبی و قرمز یک تصویر را با هم جابجا کنید و خروجی را نمایش دهید.
***
>CODE

 <div dir="rtl">
   بارگزاری عکس و نمایش عکس اصلی
 </div>


```ruby
clc;
close all;
clear all;

image = imread('benchmark/lena.png');    
figure,imshow(image);
```
 <div dir="rtl">
 جابه جایی کانال های رنگی و نمایش عکس
 </div>
 
```ruby

B= image(:, :, 3); % گرفتن کانال آبی عکی             
image(:,:,3)=image(:,:,1);    %جایگزینی کانال قرمز به جای آبی
image(:,:,1)=B;    % جایگزینی آبی به جای قرمز           
figure,
imshow(image);    % نمایش عکس    
end
```
****

<div dir="rtl">
  نمایش عکس
  </div>
 
![image](https://user-images.githubusercontent.com/48456571/116531736-bcebf900-a8f4-11eb-9f67-a9e40ea776a8.png)
