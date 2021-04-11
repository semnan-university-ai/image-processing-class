> # Exercise 8
> Write a program that specifies a length and width and then crop an image. 
***
>CODE

Main Program
```ruby
 
close all
clear all
clc
a=imread("benchmark\lena.png");
a=uint8(a);
imshow(a);
n=size(a);
l=input("Enter length of cropping area: ");
w=input("Enter length of cropping area: ");
x=ceil((n(1)-l)/2);
y=ceil((n(2)-w)/2);
pic=zeros(l,w);
for i=1:l
    for j=1:w
        pic(i,j,1:n(3))=a(x+i,y+j,1:n(3));
    end
end
pic=uint8(pic);
CurvaJV=figure('Name','Cropped Image');
imshow(pic)
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/2f41d1b4dcaf7e2e47a5336a258b560e66bca844/excersiecs/alirezachaji/9/Exce09.png)
***
