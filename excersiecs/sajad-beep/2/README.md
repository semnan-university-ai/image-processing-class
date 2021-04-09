# توضیحات تمرین دو
## دریافت سایز تصویر
~~~
x=1000;
y=1000;
~~~
~~~
imagesquare=zeros(x,y);
~~~
## دریافت شعاع دابره 100 و مرکز 500 و 500
~~~
center=500;
r=100;
~~~
## سیاه کردن پس زمینه تصویر
~~~
for i=1:x
    for j=1:y
        imagesquare(i,j)=0;
    end
end
 ~~~
 ## پیدا کردن نقاط دایره و سفید کردن آن
 ~~~
for i=0:1000
    for j=0:1000
       if (r>sqrt((i-center)^2+(j-center)^2))
           imagesquare(i,j)=255;
       end
    end
end


 
figure,
imshow(imagesquare);

![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/2/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%B3%D9%88%D8%A7%D9%84%20%D8%AF%D9%88.PNG)
