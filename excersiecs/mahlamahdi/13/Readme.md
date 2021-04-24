<div dir = "rtl">
  <h1> تمرین سیزدهم</h1>

</div>


````
clc;
clear;
close all;

````
<div dir = "rtl">
  خواندن عکس</br>
  تبدیل عکس به خاکستری</br>
  نمایش عکس و بدست آوردن اندازه عکس

</div>

`````
image=imread('lena.png');
image=rgb2gray(image);
imshow( image);
[m,n] = size(image);

`````

<div dir = "rtl">
  تبدیل عکس به نگاتیو

</div>

`````
for i =1:m
    for j=1:n
        negative_pic(i,j) = 255- image(i,j);
    end
end

`````
  
  
