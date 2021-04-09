<p direction='ltr'>###تمرین 1</p>
<p direction='ltr'>باعث می شود پس از هر بار اجرای برنامه پنجره ی فرمان ها پاک شود</p>
"""
clc;
close all;
clear all;
"""
<p direction='ltr'> می خواهیم هر خانه شطرنجی  چند در چند باشد!:**مقیاس صفحه شترنجی**</p>
"""
r=8;
"""
<p direction='ltr'>تصویر اولیه ای با مقادیر اولیه صفر ایجاد می نماییم!</p>
"""
image = zeros(100*r,100*r);
"""
<p direction='ltr'>حلقه تو در تو زیر با استفاده از خاصیت باقی مانده صفحه شترنجی را در تصویرمان ایجاد می کند.</p>
"""
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
"""
<p direction='ltr'>با دستور زیر تصویر تغییر داده شده را نمایش می دهیم.</p>
"""
figure,
imshow(image);
"""
![[output](t1.bmp)