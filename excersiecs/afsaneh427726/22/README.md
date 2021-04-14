
> # Exercise 22
> عوض کردن کانال های قرمز و آبی تصویر
***
>CODE


```ruby 
clc;
clear data;
clear all;
image=imread('C:\Users\as\Downloads\pool.png');
imshow(image)
a=image(:,:,1);
b=image(:,:,3);
image(:,:,3)=a;
image(:,:,1)=b;
figure;
imshow(image);
```

![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/22/1.jpg)
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/22/2.jpg)
***

