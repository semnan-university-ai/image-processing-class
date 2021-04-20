<div dir = "ltr">
    
```
x = input('x = ');
y = input('y = ');
squ = input('row = ');
output = uint8(zeros(1000 , 1000));
for i = 1 : squ
    for j = 1 : squ
        output(y + i - 1 , x + j - 1 ) = 255;
    end
end
imshow(output);
```
</div>

<div dir = "rtl">
همانند کشیدن مستطیل مختصات گوشه بالا سمت چپ تصویر به علاوه طول ضلع مربع از کاربر دریافت می شود
در نهایت با حرکت از مختصات گرفته شده و به اندازه طول ضلع مربع و با روشن کردن تک تک پیکسل ها مربع شکل می گیرد

خروجی برنامه :

![t7_squ](https://user-images.githubusercontent.com/80279784/113258278-fecb5480-92e0-11eb-8ab1-17653d56e6ff.PNG)

</div>
