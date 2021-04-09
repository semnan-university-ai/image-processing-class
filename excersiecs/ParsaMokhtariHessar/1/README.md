
# تمرین 1

<div direction='ltr'>باعث می شود پس از هر بار اجرای برنامه پنجره ی فرمان ها پاک شود</div>

```
clc;
close all;
clear all;
```

<div direction='ltr'> می خواهیم هر خانه شطرنجی  چند در چند باشد!:**مقیاس صفحه شترنجی**</div>

```
r=8;
```

<div direction='ltr'>تصویر اولیه ای با مقادیر اولیه صفر ایجاد می نماییم!</div>

```
image = zeros(100*r,100*r);
```

<div direction='ltr'>حلقه تو در تو زیر با استفاده از خاصیت باقی مانده صفحه شترنجی را در تصویرمان ایجاد می کند.</div>

```
for i=1 : r*100
    if floor(mod( i/100 , 2 )) == 0 
        for j=1 : r*100
            if floor(mod( j/100 , 2 )) == 0 
                image(i, j) = 255;
            end    
            if floor(mod( j/100 , 2 )) == 1 
                image(i, j) = 0;
            end        
        end 
    end
    if floor(mod( i/100 , 2 )) == 1 
        for j=1 : r*100
            if floor(mod( j/100 , 2 )) == 0 
                image(i, j) = 0;
            end    
            if floor(mod( j/100 , 2 )) == 1 
                image(i, j) = 255;
            end        
        end 
    end
end
```

<div direction='ltr'>
    با دستور زیر تصویر تغییر داده شده را نمایش می دهیم.
</div>

```
figure,
imshow(image);
```

![[output](t1.bmp)
