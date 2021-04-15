> #تمرین  7
>اشکال هندسی مربع، مستطیل، لوزی، مثلث را بدون توابع متلب رسم کنید. 
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

%rectangle
figure
a=[10 90 90 10 10];
b=[20 20 80 80 20];
plot(a,b);
fill(a, b, 'r')
axis([0 100 0 100]);
%square
figure
a=[20 80 80 20 20 80];
b=[20 20 80 80 20 20];
plot(a,b);
fill(a, b, 'r')
axis([0 100 0 100]);
%triangle
figure
a=[20 80 50 20  ];
b=[20 20 70 20  ];
plot(a,b);
fill(a, b, 'b')
axis([0 100 0 100]);

%diamond
figure
a=[50 80 50 20 50 ];
b=[20 50 80 50 20 ];
plot(a,b);
fill(a, b, 'g')
axis([0 100 0 100]);
```
****
<div dir="rtl">
مستطیل 
</div>
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/7/rectangle.png)
<div dir="rtl">
مربع 
</div>
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/7/square.png)
<div dir="rtl">
مثلث
</div>
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/7/triangle.png)
<div dir="rtl">
لوزی 
</div>
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/7/diamond.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا  مختصات هر کدام از اشکال هندسی را مشخص می کنیم<br />
<b>2</b>.    با استفاده از تابع plot .با توجه  به مختصات مشخص شده اشکال  مان را رسم می کنیم  <br />

</div>
