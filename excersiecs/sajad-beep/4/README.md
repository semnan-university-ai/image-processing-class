# توضیحات تمرین 4 
## خواندن تک تک تصاویر!
~~~
clc;
clear;
tasvir1=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\airplane.png");
tasvir2=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\baboon.png");
tasvir3=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\barbara.png");
tasvir4=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\boat.png");
tasvir5=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\fruits.png"); 
~~~
## خواندن تصویر خاکستری کردن تصویر
~~~
 X=tasvir1;
X= im2gray(X);
figure,
imshow(X);
 
y1=zeros(100,100);     
~~~
## کپی مقادیر پیکسل های سمت راست پایین تصویر1 در ماتریس  100  در 100
~~~
for i=512-100:512
     
    for j=512-100:512
        
        y1(i-411,j-411)=X(i,j);
        
    end
end

y1=uint8(y1);
~~~
## تکرار مسائل تصویر1 برای2
~~~
 X=tasvir2;
 X= im2gray(X);
figure,
imshow(X);
 
y2=zeros(100,100);     
for i=512-100:512
     
    for j=512-100:512
        
        y2(i-411,j-411)=X(i,j);
        
    end
end

y2=uint8(y2);
~~~
## تکرار مسائل تصویر2 برای3

~~~
 X=tasvir3;
 X= im2gray(X);
figure,
imshow(X);
 
y3=zeros(100,100);     
for i=512-100:512
     
    for j=512-100:512
        
        y3(i-411,j-411)=X(i,j);
        
    end
end

y3=uint8(y3);
~~~
## تکرار مسائل تصویر3 برای4

~~~
X=tasvir4;
X= im2gray(X);
figure,
imshow(X);
 
y4=zeros(100,100);    
for i=512-100:512
     
    for j=512-100:512
        
        y4(i-411,j-411)=X(i,j);
        
    end
end

y4=uint8(y4);
~~~
## تکرار مسائل تصویر4 برای5

~~~
 X=tasvir5;
 X= im2gray(X);
figure,
imshow(X);
 
y5=zeros(100,100);        
%X=im2gray(X);
 indexNum = size(X);
for i=512-100:512
     
    for j=512-100:512
        
        y5(i-411,j-411)=X(i,j);
        
    end
end

y5=uint8(y5);
~~~
## قرار دادن هر کدام از تکه های جدا شده 100 در 100 در یک ماتریس 500 در 500
~~~

z=[y1 y2 y3 y4 y5;y2 y1 y4 y3 y5 ;y5 y3 y4 y2 y1;y1 y4 y3 y2 y5;y4 y3 y1 y2 y5;];

imshow(z);
~~~
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/4/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AC%D9%88%D8%A7%D8%A8%20%D8%AA%D9%85%D8%B1%DB%8C%D9%864.PNG)
