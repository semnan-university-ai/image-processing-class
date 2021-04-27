> # Exercise 12
>با کمک برنامه ی تمرین قبل برنامه ای بنویسید که مقدار تمام پیکسل های خروجی از فیلتر میانه، 
فیلتر میانگین، نویز فلفل نمکی را با یک عدد صحیح محاسبه کند.
***
>CODE

Main Program
```ruby
close all;
clear;
clc;

image=rgb2gray(imread("peppers.png"));
subplot(2,2,1),imshow(image),title('Orginal');% Orginal 
[a, b] = size(image);
 
for i=1:5000
    X=randi([1,a]);
    Y=randi([1,b]);
    image(X,Y)=randi([0,1])*255;
end
subplot(2,2,2),imshow(image),title('Add noise');%noise 

M = im2double(image);
N = [];

K = im2double(image);
%Mean 
for i=2:a-1
    for j=2:b-1
            N(1) = K(i-1,j-1);
            N(2) = K(i-1,j) ;
            N(3) = K(i-1,j+1);
            N(4) = K(i,j-1);
            N(5) = K(i,j+1);
            N(6) = K(i+1, j-1);
            N(7) = K(i+1,j);
            N(8) = K(i+1,j+1);
            K(i,j) = mean(N);
    end
end 
subplot(2,2,3),imshow(K),title('Add Mean filter ');%Mean 

%Median
for i=2:a-1
    for j=2:b-1
            N(1) = M(i-1,j-1);
            N(2) = M(i-1,j) ;
            N(3) = M(i-1,j+1);
            N(4) = M(i,j-1);
            N(5) = M(i,j+1);
            N(6) = M(i+1, j-1);
            N(7) = M(i+1,j);
            N(8) = M(i+1,j+1);
            M(i,j) = median(N);
    end
end 
subplot(2,2,4),imshow(M),title('Add Median filter');%Median
```
****
![result1](https://user-images.githubusercontent.com/79658260/115952154-b6770f00-a4f9-11eb-8e10-71bc0d7635d7.png)





<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>. 
 
    
</div>

