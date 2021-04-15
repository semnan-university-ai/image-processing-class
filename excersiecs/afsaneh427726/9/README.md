> # Exercise 9
> 
>CODE



 <div dir="rtl">
یک تصویر از ورودی خوانده
 </div>

```ruby 
image=imread('C:\Users\as\Downloads\zelda.png');
```
 <div dir="rtl">
طول و عرض آن را ذخیره کرده
 </div>
```ruby
M=length(image(:,1))
N=length(image(1,:))
```
 <div dir="rtl">
مقدار طول وعرض تصویر برش داده شده را ازورودی می گیریم و هر کدام رابر 2 تقسیم می کنبم چون باید از نقطه وسط به اندازه نصف طول و نصف عرض به چپ راست بالا و پایین برویم
 </div>
```ruby
B=input('tool ra vared kon :   ')
A=input('arz ra vared kon :   ')
m=M/2;
n=N/2;
B=B/2;
A=A/2;
```
 <div dir="rtl">
ازوسط به اندازه نصف در چهار جهت پیکسلها را نگه داشته و بقیه را سفید می کنیم
 </div>
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

