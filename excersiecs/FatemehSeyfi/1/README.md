> # سوال 1
>برنامه ای بنویسید که با دریافت یک طول و عرض به عنوان مقدار طول و عرض تصویر یک صفحه ی شطرنج ایجاد کنید.1
***
>CODE

Main Program
```ruby
clc;
close all;
clear;
m=input("please enter width:");
n=input ("please enter length:");
a=chessboard(m,n);
imshow(a);
function[a]= chessboard(m,n)
for i=1:1:m
    for j=1:1:n
        if mod((i+j),2)==0
            a(i,j)=0;
        else
            a(i,j)=255;
        end
       
    end
        
end

end
```
****
![image](https://user-images.githubusercontent.com/blob/main/excersiecs/FatemehSeyfi/1/q1.png)



