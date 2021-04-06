> # Exercise 11

***
>CODE

```ruby
clc
clear
close all

image=imread('lena.png');
size=(size(image));
colors=[0 255];
if size(3)==3
    image=rgb2gray(image);
end

for i=1:10000
    x=randi( size(1));
    y=randi( size(2));
    image(x,y)=colors(randi(2));
 
end
 imshow(image)

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/11/Screenshot%20(30).png)
***
<div dir="rtl">

</div>



