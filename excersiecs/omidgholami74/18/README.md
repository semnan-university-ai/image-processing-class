> # Exercise 18
> سعی کنید صفحه ی ساعت تصویر watch.png را کاملا سفید کنید.
>CODE
```ruby
clc;
close all;
clear all;

img =imread('benchmark/watch.png');
figure;imshow(img);
R = img(:,:,1); 
G = img(:,:,2); 
B = img(:,:,3);
 k=90;
for i=294:589
   if k<0
       k=0;
   end
    for j=333+k:694-k
            if ~(R(i,j)>G(i,j) && G(i,j)>B(i,j)&& R(i,j+4)>G(i,j+4) && G(i,j+4)>B(i,j+4))
                img(i,j,:)=[255,255,255];
            end
    end
    if i<500
        k=k-1;
    elseif i>560
        k=k+5;
    else
        k=k+1
    end
end


figure;imshow(img);
```
****

![image](https://user-images.githubusercontent.com/48456571/113309814-c5183f00-931c-11eb-9355-a40ba74fc33b.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>

