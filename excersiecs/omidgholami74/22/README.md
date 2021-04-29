
> # Exercise 14
>یک دیتاست تصویری از 12 ساعت مختلف یک شبانه روز ایجاد کنید و این تصاویر را به grayscale تبدیل کنید و هیستوگرام هر کدام را با یکدیگر مقایسه کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

image = imread('benchmark/lena.png');    
figure,imshow(image);          
B= image(:, :, 3);             
image(:,:,3)=image(:,:,1);    
image(:,:,1)=B;               
figure,
imshow(image);        
end
```
****

![image](https://user-images.githubusercontent.com/48456571/116531736-bcebf900-a8f4-11eb-9f67-a9e40ea776a8.png)
