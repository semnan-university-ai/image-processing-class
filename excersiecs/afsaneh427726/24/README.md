
> # Exercise 24
>عوض کردن کانل های قرمز دو تصویر 
***
>CODE

Main Program
```ruby
clc;
clear data;
clear all;
image=imread('C:\Users\as\Downloads\pool.png');
image1=imread('C:\Users\as\Downloads\watch.png');
image=imresize(image,[200,200]);
image1=imresize(image1,[200,200]);
a=image(:,:,1);
b=image1(:,:,1);
image1(:,:,1)=a;
image(:,:,1)=b;
imshow(image)
figure;
imshow(image1);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/2687c7cd96689152e04a67441b485851d3ee9add/excersiecs/alirezachaji/11/Exce11.1.png)
***

