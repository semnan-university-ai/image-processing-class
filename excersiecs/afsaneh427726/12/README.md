
> # Exercise 12
  <div dir="rtl">
 اعمال فیلتر میانه و میانگین بر روی تصویر دارای نویز فلفل نمکی
***
     </div>
>CODE
 <div dir="rtl">
در ابتدا بر روی عکس نویز فلفل نمکی ایجاد می کنیم:
     </div>

```ruby
clc;
clear data;
clear all;
image=imread('C:\Users\as\Downloads\boat.png');
[a,b]=size(image);
img=zeros(a,b);
for m=1:3000
    i=randi(a);
    j=randi(b);
    image(i,j)=0;
end
for m=1:3000
    i=randi(a);
    j=randi(b);
    image(i,j)=255;
end
```
 <div dir="rtl">
سپس فیلتر میانگین راروی تصویر اعمال می کنیم
 </div>
filter miangin

```ruby
 for i=2:a-1
     for j=2:b-1
         A(1)=image(i-1,j);
         A(2)=image(i+1,j);
         A(3)=image(i-1,j+1);
         A(4)=image(i-1,j-1);
         A(5)=image(i+1,j-1);
         A(6)=image(i+1,j+1);
         A(7)=image(i,j+1);
         A(8)= image(i,j-1);
         A(9)=image(i,j);
         c=sum(A);
         d=round(c/9);
         img(i,j)=d;  
     end
 end
  figure;
 img= uint8(img);
 imshow(img);
 ```

![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/12/mean.jpg)

 <div dir="rtl">
سپس فیلتر میانه راروی تصویر اعمال می کنیم
 </div>
filter median

```ruby
  for i=2:a-1
     for j=2:b-1
         A(1)=image(i-1,j);
         A(2)=image(i+1,j);
         A(3)=image(i-1,j+1);
         A(4)=image(i-1,j-1);
         A(5)=image(i+1,j-1);
         A(6)=image(i+1,j+1);
         A(7)=image(i,j+1);
         A(8)= image(i,j-1);
         A(9)=image(i,j);
         A=sort(A);
         img(i,j)=A(5);
         
     end
 end
```



![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/12/median.jpg)



