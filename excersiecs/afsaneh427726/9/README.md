> # Exercise 9
> 
>CODE




یک تصویر از ورودی خوانده
 ```ruby 
image=imread('C:\Users\as\Downloads\zelda.png');
```
طول و عرض آن را ذخیره کرده
```ruby
M=length(image(:,1))
N=length(image(1,:))
```
مقدار طول وعرض تصویر برش داده شده را ازورودی می گیریم و هر کدام رابر 2 تقسیم می کنبم چون باید از نقطه وسط به اندازه نصف طول و نصف عرض به چپ راست بالا و پایین برویم
```ruby
B=input('tool ra vared kon :   ')
A=input('arz ra vared kon :   ')
m=M/2;
n=N/2;
B=B/2;
A=A/2;
```
ازوسط به اندازه نصف در چهار جهت پیکسلها را نگه داشته و بقیه را سفید می کنیم

```ruby
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
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/9/zelda.jpg)
***

