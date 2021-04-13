<div dir = "ltr">
    
```
r = input('r = ');
x = input('x = ');
y = input('y = ');
black_image = zeros(1000 , 1000 , 3 , 'uint8');
final_image = insertShape(black_image,'FilledCircle',[x y r],'color','white');
imshow(final_image);
```
</div>


<div dir = "rtl">
ابتدا مختصات و شعاع دایره را از کاربر گرفته و سپس یک تصویر سیاه رنگ به اندازه 1000 در 1000 ایجاد می گردد
به کمک تابع insertshape
دایره ای با رنگ سفید در مختصات و شعاع داده شده کشیده می شود

خروجی برنامه :

![t2](https://user-images.githubusercontent.com/80279784/113249805-9b3b2a00-92d4-11eb-8949-94042932c392.PNG)

</div>
