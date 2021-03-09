<div dir="rtl" >
  
## سوال 1:

**برنامه ای بنویسید که با دریافت یک طول و عرض به عنوان مقدار طول و عرض تصویر یک صفحه ی شطرنج ایجاد کنید؟**

</div>

```
close all
clear all
clc
row = input('Enter row: ');
colum = input('Enter column: ');

for i=1:1:row
        for j=1:1:colum
            if mod((i+j),2)==0
                im(i,j)=0;
            else  
                 im(i,j)=1;
            end
        end
end


figure('Name','Chessboard');
imshow(im, 'InitialMagnification', 1200);
```
