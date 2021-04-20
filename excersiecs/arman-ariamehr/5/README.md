<div dir = "ltr">
    
```
address = 'koze.jpeg';
%read main image
im = imread(address);
%create its sym
sym_im = fliplr(im);
row = size(im , 1);
col = size(im , 2);
final_im = uint8(zeros(row , col * 2 , 3));
%the left side (col = 1 to col of main image) is sym of main image
final_im( : , 1 : col , : ) = sym_im;
%the right side (col = col of main image to end) is main image
final_im( : , col + 1 : end , : ) = im;
imshow(final_im);
```
</div>

<div dir = "rtl">
ابتدا تصویر را خوانده سپس تصویر ورودی به کمک تابع فلیپ ال آر از سمت چپ به راست چرخانده می گردد
در قدم بعدی تصویری سیاه رنگ به تعداد سطر و دو برابر ستون های تصویر ورودی ایجاد میگردد
در نهایت هم هر تیکه در مکان درست خود قرار می گیرد

تصویر اولیه :

![koze](https://user-images.githubusercontent.com/80279784/113254953-7cd92c80-92dc-11eb-9bad-bf622e09525e.jpeg)


نتیجه :

![t5](https://user-images.githubusercontent.com/80279784/113255047-98dcce00-92dc-11eb-90b5-d526c6039e13.PNG)

</div>
