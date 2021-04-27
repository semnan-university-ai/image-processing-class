> # Exercise 8
>بدون استفاده از توابع آماده ی متلب یک تصویر را با 180،120،90،45 درجه بچرخانید؛ در تصاویری که 
چرخش تصویر باعث خارج شدن از حالت مربعی می شود پیکسل های خالی را برابر رنگ مشکی قرار 
دهید و پیکسل های خارج شده از محدوده را نادیده بگیرید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;
img1=imread("boat.png");

x1=zeros([size(img1,1)*size(img1,2) 1]);
x2=zeros([size(img1,2)*size(img1,1) 1]);
deg = input('insert degree:');

img2=uint8(zeros([size(img1,1) size(img1,2) 3 ]));

a=1;
midx=ceil((size(img2,1)+1)/2);
midy=ceil((size(img2,2)+1)/2);

for i=1:size(img1,1)
    i1=i-midx;
    for j=1:size(img1,2)
        [t,r]=cart2pol(i1,j-midy);
        t1=radtodeg(t)+deg;
        t=degtorad(t1);
        [x,y]=pol2cart(t,r);
        x1(a)=round(x+midx);
        x2(a)=round(y+midy);
        a=a+1;
    end  
   
end

x1(find(x1 < 1))=1;
x2(find(x2 < 1))=1;
b=1;

for i=1:size(img1,1)
    for j=1:size(img1,2)
        img2(x1(b),x2(b),:)=img1(i,j,:);
       
        b=b+1;
    end
   
end
 imshow(img2);

```
****
![45deg](https://user-images.githubusercontent.com/79658260/115450605-5ea68280-a231-11eb-800c-4239b2d3b84b.png)





<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدای برنامه عکس را بارگذاری میکند<br />
<b>2</b>.سایز تصویر را میخواند و تغییر می دهد<br />
<b>3</b>. نقاط میانی را پیدا میکندو تصویر رااز رادیان به درجه تبدیل می کندو مقدار درجه رااضافه میکند و بعد باز از درجه به رادیان تبدیل میکند و تبدیل به مختصات دکارتی انجام می شود<br />
<b>4</b>.بررسی مبکند ایا مقادیردر اندازه تصویر هستند یا نه <br />
<b>5</b>.در ابتدا مقدار درجه ی چرخش را از ورودی میگیرد    
</div>

