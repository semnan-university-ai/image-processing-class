<div>
    
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
  
ابتدا سطر و ستون را از کاربر گرفته و یک تصویر سیاه رنگ به اندازه آن ایجاد میشود. 
سپس به اندازه یک هشتم سطر و ستون وارد شده دو مربع سفید و سیاه رنگ ایجاد می گردد
در نهایت با استفاده از حلقه در تصویر اولیه حرکت کرده و مربع ها به ترتیب جایگزین می شوند 
کنترل ترتیب جایگزینی مربع سیاه و سفید توسط متغیر choose کنترل می گردد

خروجی برنامه :

![t1](https://user-images.githubusercontent.com/80279784/113247418-43022900-92d0-11eb-8cc4-313ec013d4b3.PNG)

</div>
