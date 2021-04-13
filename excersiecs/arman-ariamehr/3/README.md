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
ابتدا آدرس را مشخص کرده سپس تمام فایل های موجود در پوشه بنچ مارک را شنباسایی کرده.
 به کمک حلقه اگر تصویر رنگی باشد از هر رنگ کسری را برداشته و با یک دیگر جمع می شوند
 در نهایت هم در پوشه خروجی ذخیره می گردند
 
 تصویر هواپیما :
 
 ![airplane](https://user-images.githubusercontent.com/80279784/113253536-a09b7300-92da-11eb-882b-43efb703aed7.png)


تصویر هواپیما بعد از تغییر :

![airplane](https://user-images.githubusercontent.com/80279784/113253637-bdd04180-92da-11eb-95d2-56c5274a24c9.png)


تنها ایراد برنامه تصاویری با پسوند .bmp می باشد

</div>
