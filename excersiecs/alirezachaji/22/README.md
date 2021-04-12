


> # Exercise 22
>  Swipe the blue and red color channels of an image and display the output. 

***
>CODE

```ruby
close all
clear all
clc
pic=imread('benchmark\fruits.png');
subplot(1,2,1);imshow(pic);
title('Original Image')
r=pic(:,:,1);
pic(:,:,1)=pic(:,:,3);
pic(:,:,3)=r;
subplot(1,2,2);imshow(pic);
title('Changed Image')
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/9feaa9e64fc29aab022a6367a2ecde3e936fac2e/excersiecs/alirezachaji/22/Exce22.png)
***
<div dir="rtl">
توضیحات برنامه <br />عملکرد برنامه واضح بوده و نیاز به توضیح خاصی ندارد. 
</div>
