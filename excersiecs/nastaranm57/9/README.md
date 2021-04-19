<div dir="rtl">
جواب سوال 9:
    برنامه ای بنویسید که یک طول و عرض را مشخص کرده و سپس یک تصویر را crop کند.
    این برنامه، نقاط شروع و پایان برش را از ورودی دریافت می کند و با توجه به آن، تصویر برش خورده خروجی را نشان می دهد:
تصویر اصلی به صورت زیر است:
</div>

<div dir="rtl">
در ابتدا، تصویر را از آدرس مورد نظر خوانده و آن را در متغیر keanu قرار می دهیم. تصویر ورودی به صورت زیر است:
</div>

![voroodi](9.jpg)

```
keanu=imread('C:\Users\PC\Desktop\9.jpg');
```

<div dir="rtl">
کد زیر، عبارت  " طول و عرض تصویر را برای کراپ مشخص کنید" را نمایش می دهد:
</div>

```
disp('tul va raze tasvir ra baraye crop moshakhas konid:');
```

<div dir="rtl">
در ادامه، 4 مولفه را به عنوان ورودی از کاربر می خواهیم: شروع عرض کراپ - پایان عرض کراپ - شروع ستون کراپ - پایان ستون کراپ:
</div>


```
row_start=input('crop az che arzi shoroo shavad?');
row_end=input('crop dar che arzi tamam shavad?');
col_start=input('crop az che sotooni shoroo shavad?');
col_end=input('crop dar che sotooni  tamam shavad?');
```

<div dir="rtl">
با توجه به نقاط مشخص شده، برش را با دستور زیر انجام می دهیم:
</div>

```
cropped=keanu(row_start:row_end,col_start:col_end,:);
```

<div dir="rtl">
در پایان، تصویر اصلی و تصویر برش داده شده را با دستورات زیر نمایش می دهیم:
</div>

```
figure(1),imshow(keanu),title('axe asli');
figure(2),imshow(cropped),title('axe crop shode');
```

<div dir="rtl">
خروجی برنامه بالا به صورت زیر است:
</div>

![khorooji](9.1.jpg)
