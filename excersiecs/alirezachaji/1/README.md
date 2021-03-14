

> # Exercise 1
> 1. Write a program that creates a chessboard by getting a length and width as the value of the length and width of the image.
***
>CODE

```ruby
close all
clear all
clc
a=0;
% Because chess plate is squrae so we need only one number as dimension
while (a<8)
 a=input("Please enter a number as the chess dimension more than 8 (for a better vision enter a number more than 100) : ");
end
n=a*a;
b=floor(a/8);
c=mod(a,8);
chess=zeros(1,2);
s=0;
for i=1:8
    for j=1:8
        for ii=1:b
            for jj=1:b
                r=(i-1)*b+ii;
                c=(j-1)*b+jj;
                chess(r,c)=s;
            end
        end
        s=1-s;
    end
    s=1-s;
end

imshow(chess)
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/19edc3c81c43fb7c551e120de823663981e77cb0/excersiecs/alirezachaji/1/Exce01.png)

<div dir="rtl">
نمونه متن فارسی
</div>
