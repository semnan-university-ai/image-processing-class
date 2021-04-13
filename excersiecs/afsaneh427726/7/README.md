> # Exercise 7
> 
***
>CODE
 
```ruby
clc
clear data;
clear all;

یک ماتریس 500*500مشکی در نظر میگیریم

w=zeros(500);

برای هرکدام ازشکل ها مقدار درایه های مربوطه را 1 میکنیم

% rectangle

w(50,50:150)=1;
w(50:100,50)=1;
w(50:100,150)=1;
w(100,50:150)=1;

% squre

w(150,50:150)=1;
w(150:250,50)=1;
w(150:250,150)=1;
w(250,50:150)=1;

برای رسم اضلاع مورب مثلث و لوزی به ترتیب سطرها را جلو میرویم و به مقدار ستون یکی اضافه می کنیم و درایه را 1 می کنیم.

% triangle1

w(200,200:300)=1;
w(100:200,300)=1;
j=300;
i=100

for i=100:200
    
    w(i,j)=1;
    
    j=j-1;
    
end

% triangle2

j=400

for i=100:150

    w(i,j)=1;
    
    j=j-1;
    
end

j=400

for i=100:150

    w(i,j)=1;
    
    j=j+1;
    
end

w(150,350:450)=1;

% diomond

 j=400
 
for i=300:350

    w(i,j)=1;
    
    j=j-1;
end

j=400

for i=300:350

    w(i,j)=1;
    
    j=j+1;
    
end 

 j=350
 
for i=350:400

    w(i,j)=1;
    
    j=j+1;
    
end
j=450

for i=350:400

    w(i,j)=1;
    
    j=j-1;
    
end 
imshow(w) 
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/7/soal7.2.jpg)



