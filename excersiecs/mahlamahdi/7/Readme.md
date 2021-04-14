
<div dir = "rtl">
    <h1> تمرین هفتم </h1>
</div>

<div dir="rtl">
تصویر کوزه نصفه را خوانده </br>
به صورت ردیف به ردیف شروع به ایجاد تصویر result می نمایید.</br>
به این صورت که ابتدا مقدار x  و y را درج می نمایید سپس از آخرین پیکسل همان ردیف شروع شده و آن را در تصویر result قرار داده است.
</br>

</div>


````
clc;
close all;
clear;

img=imread("kozeh.png");
img = rgb2gray(img);
for x=1:size(img,1)
   for y=1:size(img,2)
       result(x,y) = img(x,y);
       result(x,size(img,2)+y)=img(x,size(img,2)-y+1);
   end
end
imshow(result);
````
