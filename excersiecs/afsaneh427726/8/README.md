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

(rotate90.m)چرخش 90


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
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/ec436b2073664290ac3f0508f72503ef8aa13683/excersiecs/alirezachaji/8/Exce08.png)
***




