# توضیحات تمرین سه خاکستری کردن بدون استفاده تابع اماده
~~~
clc;
clear;
X=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\airplane.png");
 indexNum = size(X);
~~~
## ایجاد ماتریس برای ذخیره تصویر
~~~
grayImage = im2uint8(zeros(indexNum(1), indexNum(2)));
~~~
## پیمایش عکس و جمع کردن هر کانال و حساب کردن گری تصویر با تاثیر یک سوم هر کانال
~~~
   temp = 0;
    for i = 1:indexNum(1)
        for j=1:indexNum(2)
            temp = int32(X(i, j, 1)) + int32(X(i, j, 2)) + int32(X(i, j, 3));
            if(temp < 0)
                temp = 0;
            elseif(temp > 255)
                temp = 255;
            end
            grayImage(i,j) = int8(round(temp * .33));
        end
    end
    imshow(grayImage);
~~~
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/3/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%B3%D9%88%D8%A7%D9%84%20%D8%B3%D9%87.PNG)
