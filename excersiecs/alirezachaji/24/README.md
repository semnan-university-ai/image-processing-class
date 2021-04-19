



> # Exercise 24
>  Swipe the blue and red color channels of an image and display the output. 

***
>CODE

```ruby
close all
clear all
clc
pic1=imread('benchmark\watch.png');
pic1=imresize(pic1,[383 510]);
pic2=imread('benchmark\pool.png');
subplot(1,4,1);imshow(pic1);
title('Original Image (watch)')
subplot(1,4,2);imshow(pic2);
title('Original Image (pool)')
rw=pic1(:,:,1);
rp=pic2(:,:,1);
pic2(:,:,1)=rw;
pic1(:,:,1)=rp;
subplot(1,4,3);imshow(pic1);
title('New Watch')
subplot(1,4,4);imshow(pic2);
title('New Pool')

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/ab25d8dc3da7edf2fd0acc677dc3f6b090b50a1d/excersiecs/alirezachaji/24/Exce24.png)
***
<div dir="rtl">
توضیحات برنامه <br />عملکرد برنامه واضح بوده و نیاز به توضیح خاصی ندارد. 
</div>
