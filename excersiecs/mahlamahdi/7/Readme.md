
<div dir = "rtl">
    <h1> تمرین هفتم </h1>
</div>

<div dir="rtl">
رسم مربع
</br>

</div>


````
clc;
clear;
close all;

image=ones(500,500);


size=200;
start=[20,20];

for x =0 : size
    image(start(1),start(2)+x)=0;
    image(start(1)+size,start(2)+x)=0;
    image(start(1)+x,start(2))=0;
    image(start(1)+x,start(2)+size)=0;
end

````
<div dir="rtl">
رسم مثلث
</br>

</div>
 
```` 
start=[250,100];
size = 100;

for x =0 : size
    image(start(1),start(2)+x)=0;
    image(start(1)+x,start(2))=0;
end
y=0;
for x=0:size
    image(start(1)+x,(start(2)+size)-y)=0;
    y=y+1;
end

````
<div dir="rtl">
رسم مستطیل
</br>

</div>

````
size = 100;
x_axis= 100;
y_axis=150;
start=[20,250];
for x =0 : size
    image(start(1),start(2)+x)=0;
    image(start(1)+y_axis,start(2)+x)=0;
    
end
size=150;
start=[20,250];
for x =0 : size
    image(start(1)+x,start(2))=0;
    image(start(1)+x,start(2)+x_axis)=0;
   
end

````

<div dir="rtl">
رسم لوزی
</br>

</div>

````
size=50;
start=[250,250];
y=0;
for x=0:size
    image(start(1)+x,(start(2)+size)-y)=0;
    image(start(1)+x,(start(2)+size)+y)=0;
    y=y+1;
end
y=0;
for x=0:size
    image((start(1)+size)+x,(start(2)+2*size)-x)=0;
   image((start(1)+size)+y,start(2)+x)=0;
    y=y+1;
  
end
   imshow(image)
````
