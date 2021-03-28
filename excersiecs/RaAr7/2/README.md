## تمرین 2
<div dir='rtl'>
در تابع circlePoints نقاط رسم دایره را مشخص میکنیم
</div>
</br>

```
function [xx,yy]=circlePoints(x,y)
    if (x == 0)
        xx=[0 0 y -y];
        yy=[y -y 0 0];
        return;
    elseif x == y
        xx=[x -x x -x];
        yy=[y y -y -y];
        return;
    elseif x < y
        xx=[x -x x -x y -y y -y];
        yy=[y y -y -y x x -x -x];
        return;
    else
        xx=[];
        yy=[];
    end
end
```
<div dir='rtl'>
  و سپس در تابع midpoint_circle با کمک نقاط رسم که از تابع circlePoints داریم و فرمول رسم دایره نقطه ی مرکز دایره را مشخص میکنیم  
</div>
</br>

```
function [X,Y]=midpoint_circle(r)
    x = 0;
    y = r;
    p = (5 - r*4)/4;
    [X,Y]=circlePoints(x, y);
    while x < y
        x=x+1;
        if (p < 0)
            p =p+ 2*x+1;
        else
            y=y-1;
            p =p+ 2*(x-y)+1;
        end
        [xx,yy]=circlePoints(x, y);
        X=[X,xx];
        Y=[Y,yy];
    end
end
```
<div dir='rtl'>
  همچنین در شروع کار برنامه 2 مقدار برای شعاع دایره و موقعیت دایره در صفحه مختصات گرفته میشود.
</div>
</br>

```
radius = input('Enter Radius : ');
X_center = input('Enter Point : ');
Y_center = X_center;

```

<div dir='rtl'>
 در ادامه شعاع به عنوان ورودی تابع midpoint_circle  داده میشود و سپس با تابع zeros یک صفحه ی خالی با 1000 خانه ایجاد میکنیم و در نهایت با کمک تابع sub2ind نقاطی که دایره را تشکیل میدهند را در zeros تغییر میدهیم و در پایان با دستور imshow تغییرات اعمال شده را نمایش میدهیم. 
</div>
</br>

```
[X1,Y1]=midpoint_circle(radius);
A=zeros(1000);
A(sub2ind(size(A),X1+X_center,Y1+Y_center)) = 1;
figure;
imshow(A);
```
