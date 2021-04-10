# توضیحات تمرین پنج مربوط به تکمیل رسم کوزه از روی خط تقارن عمودی
~~~
clc;
clear;
X=imread(".\koozeh.png");
X=im2gray(X);
figure(1),
imshow(X);
~~~
## پیمایش تصویر 
~~~
sizekoozeh=size(X);
for i=1:505
    for j=1:559
~~~
## چک کردن و یافتن نقاط سیاه و کپی کردن ان در پیکسل قرینه آن
~~~
       if (X(i,j)==0)
            distanc= j-(sizekoozeh(2)/2);
            X(i,(sizekoozeh(2)/2)-distanc)=0;
        end
    end
end

   figure(2),
imshow(X); 
~~~
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/5/koozeh.png)
