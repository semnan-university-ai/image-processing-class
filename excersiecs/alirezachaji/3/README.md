> # Exercise 3
> 3. Write a program that grays benchmark images without using MATLAB functions.
***
>CODE

```ruby
close all
clear all
clc
image=imread("benchmark/lena.png");
imshow(image)
newimage=0.299*image(:,:,1)+0.587*image(:,:,2)+0.114*image(:,:,3);
figure;
imshow(newimage)
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31b4e9ff9649852e898e3972eed32976e4ead0c8/excersiecs/alirezachaji/3/Exce03.png)
