<div dir = "ltr">
    
```
row = input('row of each part = ');
col = input('col of each part = ');
image = uint8(zeros(row * 256 , col));

where = 1;

for i = 0 : 255
    mask = make_mask(row , col , i);
    image(where : where + row - 1 , : ) = mask;
    where = where + row;
end

imshow(image);

function [output] = make_mask(row,col,color)
    output = uint8(zeros(row , col));
    for i = 1 : row
        for j = 1 : col
            output(i,j) = color;
        end
    end
end
```
</div>


<div dir = "rtl">
ابتدا سطر و ستون هر رنگ از کاربر دریافت می شود
در گام بعدی یک ماتریس به اندازه 256 برابر تعداد سطر ها و به اندازه ستون ورودی ایجاد می گردد
تابع میک مسک وظیفه دارد تا یک مستطیل به اندازه ورودی و با رنگ داده شده ایجاد کند
خروجی تابع بالا در مکان درست خود که توسط متغیر ور کنترل می شود قرار می گیرد

خروجی برنامه :

![t6](https://user-images.githubusercontent.com/80279784/113256701-cc205c80-92de-11eb-8c47-e872d167969b.PNG)

</div>
