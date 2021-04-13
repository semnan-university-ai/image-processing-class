> # Exercise 8
>
>  چرخش تصاویر پیکسل به پیکسل انجام شده است و تصاویر چرخش داده شده فرستاده شده است
>  
***
>CODE


```ruby
(rotate180.m)چرخش 180

تک به تک پیکسل ها پیمایش شده وسطرها از بالا به صورت برعکس در سطرهای پایین کپی شده است


a=imread('C:\Users\as\Downloads\zelda.png');
c=imread('C:\Users\as\Downloads\zelda.png');
b=size(a)
m=b(1);
n=b(2);
n=n+1;
m=m+1;
for i=1:b(1)
    for j=1:b(2)
        c(n-i,m-j)=a(i,j);
        
    end
end

چرخش 90


تک به تک پیکسل ها پیمایش شده وهرسطر در ستون متناظر با آن کپی شده است

b=size(a)
m=b(1);
n=b(2);
n=n+1;
m=m+1;
for i=1:b(1)
    for j=1:b(2)
        c(n-j,i)=a(i,j);
        
    end
end
imshow(c)

چرخش 45و120
clc;
clear data;
clear all;
x=imread('C:\Users\as\Downloads\fruits.png');

x=imresize(x,[200 200]);
% x=rgb2gray(x);
x3=double(x);
for i=1:400
for j=1:400
x1(i,j)=round((i-100).*cosd(120)+(j-100).*sind(120)+100);
x2(i,j)=round(-(i-100).*sind(120)+(j-100).*cosd(120)+100);
if(x1(i,j)<=200)&&(x1(i,j)>0)&&(x2(i,j)<=200)&&(x2(i,j)>0)
      a(i,j,:)=x3(x1(i,j),x2(i,j),:);
  end;
  end;
  end;
image(uint8(a))
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/8/180.jpg)
[alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/8/rotate90.jpg)
[alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/8/45.jpg)
[alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/8/120.jpg)
***




