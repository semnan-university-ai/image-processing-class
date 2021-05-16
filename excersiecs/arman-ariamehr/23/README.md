<div dir = "ltr">
    
```
input_im = imread('benchmark\fruits.png');

r = input_im( : , : , 1);
g = input_im( : , : , 2);
b = input_im( : , : , 3);

r_hist = myimhist(r);
g_hist = myimhist(g);
b_hist = myimhist(b);

subplot(2,3,1)
imshow(r),title('r channel')

subplot(2,3,2)
imshow(g),title('g channel')

subplot(2,3,3)
imshow(b),title('b channel')

subplot(2,3,4)
plot(r_hist),title('r channel histogram')

subplot(2,3,5)
plot(g_hist),title('g channel histogram')

subplot(2,3,6)
plot(b_hist),title('b channel histogram')

function [y]=myimhist(img)
    [r,c]=size(img);
    y=zeros(1,256);
    for i=1:r
        for j=1:c
            z=img(i,j);
            y(z+1)=y(z+1)+1;
        end
    end
end
```
</div>

<div dir = "rtl">
  
  پس از خواندن تصویر کانال های قرمز ، سبز و آبی آن استخراج می گردد.
  
  در گام بعدی هیستوگرام هر کانال توسط تابع myimhist محاسبه می گردد.
  
  تابع imhist این گونه کار می کند که برای 256 سطح خاکستری یک بردار با مقدار اولیه صفر ایجاد می کند
  
  سپس  با حرکت در ماتریس تصویر ورودی بردار گفته شده در بالا را به روز رسانی کرده و آن را بر می گرداند
 
  در گام نهایی خروجی به نمایش در می آید.
  
  تصویر نمونه : 
  
  ![fruits](https://user-images.githubusercontent.com/80279784/116543538-3a1e6a80-a903-11eb-9d02-6b6cc1149c26.png)

  خروجی :
  
  ![image](https://user-images.githubusercontent.com/80279784/116543615-515d5800-a903-11eb-9aab-0b0bdccdae10.png)

  
</div>
