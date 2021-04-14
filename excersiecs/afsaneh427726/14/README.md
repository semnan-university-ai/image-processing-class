
> # Exercise 14
> ابتدا عکسها را به خاکستری تبدیل کرده سپس هیستوگرام هر تصویر در قسمت مربوطه چاپ می کنیم
***
>CODE

```ruby
clc;
close all;
clear all;

image =imread('C:\Users\as\Desktop\af/1.jpg');
  image=rgb2gray(image);
  subplot(6,2,1);
  imhist(image);
  image =imread('C:\Users\as\Desktop\af/2.jpg');
  image=rgb2gray(image);
  subplot(6,2,2);
  imhist(image);
  image =imread('C:\Users\as\Desktop\af/3.jpg');
  image=rgb2gray(image);
  subplot(6,2,3);
  imhist(image);
  image =imread('C:\Users\as\Desktop\af/4.jpg');
  image=rgb2gray(image);
  subplot(6,2,4);
  imhist(image);
  image =imread('C:\Users\as\Desktop\af/5.jpg');
  image=rgb2gray(image);
  subplot(6,2,5);
  imhist(image);
   image =imread('C:\Users\as\Desktop\af/6.jpg');
  image=rgb2gray(image);
  subplot(6,2,6);
  imhist(image);     
```
****
![image](https://user-images.githubusercontent.com/48456571/113308216-32c36b80-931b-11eb-887f-1843d12aa4c0.png)



