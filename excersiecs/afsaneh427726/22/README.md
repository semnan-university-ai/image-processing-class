
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

![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/2687c7cd96689152e04a67441b485851d3ee9add/excersiecs/alirezachaji/11/Exce11.1.png)
***

