<div dir = "rtl">
  <h1> تمرین نهم </h1>
  </div>
  
  <div  dir = "rtl">
       خواندی عکس ورودی و تبدیل به عکس خاکستری
  </div>
  
  ````
clc;
clear;
close all;

image=imread('lena.png');
image=rgb2gray(image);

````
  
  <div  dir = "rtl">
      مشخص کردن ابتدا و انتهای crop
  </div>
  
````  
startx=input("Enter Start of X:");
starty=input("Enter Start of Y:");
endx=input("Enter End of X:");
endy=input("Enter End of Y:");

````

 <div  dir = "rtl">
     تعیین کردن اندازه کلی crop 
  </div>
  
  ````
  Crop=zeros(endx-startx,endy-starty,'uint8');

````

<div dir = "rtl">
   تعیین طول و عرض crop  
</div>
  
  ````
x=endx-startx;
y=endy-starty;

````
<div dir = "rtl">
  قرار دادن تصویر در crop 
</div>

````
for i=1: x
    for j=1 : y
        Crop(i,j)=image(startx+i,starty+j);
    end
end
````

<div dir = "rtl">
  نمایش دادن تصویر 
</div>

````
subplot(1,2,1),imshow(image);
subplot(1,2,2),imshow(Crop);
  ````

