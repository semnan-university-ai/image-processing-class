<div dir = "ltr">
    
```
x = input('x = ');
y = input('y = ');
row_rec = input('row = ');
col_rec = input('col = ');
output = uint8(zeros(1000 , 1000));
for i = 1 : row_rec
    for j = 1 : col_rec
        output(y + i - 1 , x + j - 1 ) = 255;
    end
end
imshow(output);
```
</div>

<div dir = "rtl">
ابتدا مختصات گوشه بالا سمت چپ و طول و عرض مستطیل از کاربر دریافت میشود
در نهایت به کمک حلقه ها به اندازه گفته شده و از مختصات بیان شده تک تک پیکسل ها روشن می گردند
 
 خروجی برنامه :
 
 ![t7_rec](https://user-images.githubusercontent.com/80279784/113257216-844e0500-92df-11eb-9041-fe91bcc27efd.PNG)

</div>
