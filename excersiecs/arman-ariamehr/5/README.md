<div dir = "ltr">
    
```
r = input('satr = ');
c = input('soton = ');
matris = uint8(zeros(r,c));
si_row = round(r / 8);
si_col = round(c / 8);
white = uint8(ones(si_row , si_col) * 255);
black = uint8(zeros(si_row , si_col));
last_number = 0;
for i = 1 : si_row : r
    choose = last_number;
    for j = 1 : si_col : c
        if choose == 0
             matris(i : i + si_row - 1 , j : j + si_col - 1) = black;
        else
             matris(i : i + si_row - 1 , j : j + si_col - 1) = white;
        end
        last_number = choose;
        choose = mod(choose + 1 , 2);
    end
end
imshow(matris);
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
