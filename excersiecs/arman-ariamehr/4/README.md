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
همانند سوال سه تمام فایل های موجود در پوشه بنج مارک را خوانده و اگر تصویر رنگی باشه به خاکستری تبدیل می گردد
در قدم بعدی یک مربع 100 در 100 پیکسلی از پایین سمت راست 25 تصویر اول جدا می شود.
به کمک متغیر i و j در تصویر حرکت کرده و تیکه ها در تصویر اولیه جایگزین می گردد

خروجی برنامه :

![t4](https://user-images.githubusercontent.com/80279784/113254464-dab94480-92db-11eb-9ff5-53f811eec90f.PNG)

</div>
