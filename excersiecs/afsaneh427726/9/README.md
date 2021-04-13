> # Exercise 9
> Write a program that specifies a length and width and then crop an image. 
***
>CODE

Main Program
```ruby

یک تصویر از ورودی خوانده
  
image=imread('C:\Users\as\Downloads\zelda.png');

طول و عرض آن را ذخیره کرده

M=length(image(:,1))
N=length(image(1,:))

مقدار طول وعرض تصویر برش داده شده را ازورودی می گیریم و هر کدام رابر 2 تقسیم می کنبم چون باید از نقطه وسط به اندازه نصف طول و نصف عرض به چپ راست بالا و پایین برویم

B=input('tool ra vared kon :   ')
A=input('arz ra vared kon :   ')
m=M/2;
n=N/2;
B=B/2;
A=A/2;

ازوسط به اندازه نصف در چهار جهت پیکسلها را نگه داشته و بقیه را سفید می کنیم


for i=1:M
    for j=1:N
       if(i<m-A ||i>m+A || j<n-B || j>n+B)
           image(i,j)=255;
       end
    end
end
figure;
imshow(image);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/2f41d1b4dcaf7e2e47a5336a258b560e66bca844/excersiecs/alirezachaji/9/Exce09.png)
***

