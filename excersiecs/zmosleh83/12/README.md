<div dir="rtl">



###### کد:
</div>

```matlab
lc;clear;close all;
img=rgb2gray(imread("../../../benchmark/cat.png"));
subplot(1,4,1),imshow(img),title('Orginal');
[m, n] = size(img);
 
for i=1:100000
    X=randi([1,m]);
    Y=randi([1,n]);
    img(X,Y)=randi([0,1])*255;
end
subplot(1,4,2),imshow(img),title('Add noise');

A = im2double(img);
M = [];
%Median filter 
for i=2:m-1
    for j=2:n-1
            M(1) = A(i-1,j-1);
            M(2) = A(i-1,j) ;
            M(3) = A(i-1,j+1);
            M(4) = A(i,j-1);
            M(5) = A(i,j+1);
            M(6) = A(i+1, j-1);
            M(7) = A(i+1,j);
            M(8) = A(i+1,j+1);
            A(i,j) = median(M);
    end
end 
subplot(1,4,3),imshow(A),title('Add Median filter');
%Mean filter 
B = im2double(img);
for i=2:m-1
    for j=2:n-1
            M(1) = B(i-1,j-1);
            M(2) = B(i-1,j) ;
            M(3) = B(i-1,j+1);
            M(4) = B(i,j-1);
            M(5) = B(i,j+1);
            M(6) = B(i+1, j-1);
            M(7) = B(i+1,j);
            M(8) = B(i+1,j+1);
            B(i,j) = mean(M);
    end
end 
subplot(1,4,4),imshow(B),title('Add Mean filter ');
```

<div dir="rtl">

#### برسی کد:

1.
- خط اول قرار دادن تصویر گربه بصورت خاکستری در ماتریس img .
- نمایش تصویر.
</div>

```matlab
img=rgb2gray(imread("../../../benchmark/cat.png"));
subplot(1,4,1),imshow(img),title('Orginal');
```
<div dir="rtl">

2.
- حلقه for با انتخاب تصادفی 100000 مختصات نقاط تصویر آنها را به رنگ سیاه و سفید در می آورد و کل تصویر را دچار نویز شدید فلفل نمکی می کند.<br />
</div>

```matlab
for i=1:100000
    X=randi([1,m]);
    Y=randi([1,n]);
    img(X,Y)=randi([0,1])*255;
end
```

<div dir="rtl">


3.
- یک گپی از تصویر را در ماتریس A قرار می دهد.
- یک آرایه بنام M جهت قرار گیری محاسبات همسایگی تعریف میکند.
</div>

```matlab
A = im2double(img);
M = [];
```
<div dir="rtl">

3.
- حلقه for خارجی کل پیکسلهای تصویر را بجز یک ردیف حاشیه عکس را پیمایش می کند.
- حلقه for داخلی مقادیر همسایه پیکسل پیمایش شده را داخل آریه M  قرار می دهد و میانه آنها را برای پیکسل جاری قرار می دهد.
- تصویر نهایی را نمایش میدهد.
</div>

```matlab
%Median filter 
for i=2:m-1
    for j=2:n-1
            M(1) = A(i-1,j-1);
            M(2) = A(i-1,j) ;
            M(3) = A(i-1,j+1);
            M(4) = A(i,j-1);
            M(5) = A(i,j+1);
            M(6) = A(i+1, j-1);
            M(7) = A(i+1,j);
            M(8) = A(i+1,j+1);
            A(i,j) = median(M);
    end
end 
subplot(1,4,3),imshow(A),title('Add Median filter');
```
<div dir="rtl">

4.
- حلقه for خارجی کل پیکسلهای تصویر را بجز یک ردیف حاشیه عکس را پیمایش می کند.
- حلقه for داخلی مقادیر همسایه پیکسل پیمایش شده را داخل آریه M  قرار می دهد و میانگین آنها را برای پیکسل جاری قرار می دهد.
- تصویر نهایی را نمایش میدهد.
</div>

```matlab
B = im2double(img);
for i=2:m-1
    for j=2:n-1
            M(1) = B(i-1,j-1);
            M(2) = B(i-1,j) ;
            M(3) = B(i-1,j+1);
            M(4) = B(i,j-1);
            M(5) = B(i,j+1);
            M(6) = B(i+1, j-1);
            M(7) = B(i+1,j);
            M(8) = B(i+1,j+1);
            B(i,j) = mean(M);
    end
end 
subplot(1,4,4),imshow(B),title('Add Mean filter ');
```
<div dir="rtl">
با سپاس از توضیحات خیلی کامل آقای روضاتی<br />
</div>

