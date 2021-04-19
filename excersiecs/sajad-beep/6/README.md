# توضیجات تمرین 6
~~~
clc;
clear;
X = zeros (100,100);
for i=1:100
    for j=1:100 
~~~
##  و سیاهی بالا سمت راست راه راه
~~~
        if(mod(i,2)==1 || (i<20 && j>80))
          X(i,j)=0;
       
        else
              X(i,j)=255;
       
        
         end
        end
end
~~~
## سفیدی پایین صفحه 
~~~
for i=1:100
    for j=1:100 
         if (i>80)
              X(i,j)=255;
         end
        end
    end
imshow(X);
~~~
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/6/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%206.PNG)
