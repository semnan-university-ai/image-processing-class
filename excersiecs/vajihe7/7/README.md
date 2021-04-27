> # Exercise 7
>اشکال هندسی مربع، مستطیل، لوزی، مثلث را بدون توابع متلب رسم کنید
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;
figure;%rectangle
a=[10 90 90 10 10];
b=[20 20 80 80 20];
plot(a,b);
axis([0 100 0 100]);

figure;%square
a=[20 80 80 20 20 80];
b=[20 20 80 80 20 20];
plot(a,b);
axis([0 100 0 100]);

figure;%triangle
a=[20 80 50 20  ];
b=[20 20 70 20  ];
plot(a,b);
axis([0 100 0 100]);

figure;%diamond
a=[50 80 50 20 50 ];
b=[20 50 80 50 20 ];
plot(a,b);
axis([0 100 0 100]);
```
****
![result](https://user-images.githubusercontent.com/79658260/115448828-68c78180-a22f-11eb-9d76-ffafd1257d67.png)





<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.برای هر شکل مختصات نقاط آن را تعریف کردیم <br />
</div>

