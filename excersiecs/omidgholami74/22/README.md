
> # Exercise 22
>کانال رنگی آبی و قرمز یک تصویر را با هم جابجا کنید و خروجی را نمایش دهید.
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
