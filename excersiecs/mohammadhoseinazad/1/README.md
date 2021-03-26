
### question Info :

###### 1. برنامه ای بنویسید که با دریافت یک طول و عرض به عنوان مقدار طول و عرض تصویر یک صفحه ی شطرنج ایجاد کنید.

open the code ex1.m with mathlab press **run** button :rocket: 
enter the number of rows and columns

you can change the resolution too with changing `M` `N` in the code

<div dir = "rtl">
ابعاد تصویر
<div>
```
M = 7680;
N = 4320;
```
<div dir = "rtl">
تعداد سطر و ستون و مشخص کردن صفحه شطرنچ
<div>
```
C = input('number of rows=');
F = input('number of columns=');
I = chessboard3(N,M,C,F);
```
<div dir = "rtl">
تابعmakeboard 
ابعاد تقسیمی ضفحه رو بدست آورده و با استقاده از حلقه صفحه را می سازد
<div>
```
function [makeboard] = chessboard3(N,M,C,F)
L1 = floor(M/C);
L2 = floor(N/F);
k = 1;
for m=1:L1:M
    for n=1:L2:N
        makeboard(m:m+L1-1,n:n+L2-1)=ones(L1,L2)*(cos(k*pi));
        k=k+1;
    end
    k=k+1;
end
```
![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/1/ex1.png)
