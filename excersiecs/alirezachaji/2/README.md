> # Exercise 2
برنامه ای بنویسید که یک عدد را به عنوان شعاع دایره و یه عدد را به عنوان مکان رسم دایره از بگیرد و در یک تصویر 1000*1000 پیکسل مشکی رنگ آن دایره را با رنگ سفید نمایش دهد.
***
>CODE

```ruby
close all
clear all
clc
r=1000;
cx=0;
cy=0;
while (r>500)
    r=input("Please Enter Circle Radius (less than 500) : ");
end
while (cx<r)
    cx=input("Please Enter X-Pos of Circle Center (more than radius) : ");
end  
while (cy<r)
    cy=input("Please Enter Y-Pos of Circle Center (more than radius) : ");
end
pic=zeros(1000,1000);
circle=zeros(1000,1000);
for i=1:r
    y=round(sqrt((r^2)-(i^2)));
    xx=r-y+1;
    yy=r+i;
    pic(xx,yy)=1;
    pic(yy,xx)=1;
    xx=(2*r)-xx;
    pic(xx,yy)=1;
    pic(yy,xx)=1;
    yy=r-(yy-r)+1;
    pic(xx,yy)=1;  
end  
for i=1:r-1
    for j=1:2*r
        pic(r-i,j)=pic(r+i,j);
    end
end    
for i=1:2*r
    for j=1:2*r
        circle(cx-r+i,cy-r+j)=pic(i,j);
    end
end    
        
   
imshow(circle)  
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/57f019a9966eda747f652d713fcc5262c5b43162/excersiecs/alirezachaji/2/Exce02.png)
