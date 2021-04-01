> # Exercise 17

***
>CODE

```ruby
clear all
clc
clear;
image=imread('mountain.png');
imshow(image)
for L=1:640 
    for W=1:150
     if 120<image(W,L)
         image(W,L)=0;
     end
     if image(W+1,L)<120
         break;
     end
    end
end
image=uint8(image);
figure;
imshow(image)

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/10/Screenshot%20(17).png)
***
<div dir="rtl">
توضیحات برنامه <br />
  ابتدا محدوه مقادیر پیکسل های بخش آسمان را پیدا میکنیم و بعد با دستورات شرطی به این محدوه مقدار 0 را اختصاص میدهیم 
</div>
