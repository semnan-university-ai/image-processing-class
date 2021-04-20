
### question Info :

###### 7. اشکال هندسی مربع، مستطیل، لوزی، مثلث را بدون توابع متلب رسم کنید.

open the code ex7.m with mathlab press **run** button :rocket: 

<div dir = "rtl">
به ترتیب با توجه به مختصات مستطیل مربع لوزی مثلث را رسم می کند
</div>

```matlab
%Rectangle
x = [0 1 1 0];
y = [0 0 2 2];
patch(x,y,'red')

%Square
x = [2 4 4 2];
y = [0 0 2 2];
patch(x,y,'cyan')

%Diamond
x = [5 6 7 6];
y = [1 0 1 2];
patch(x,y,'magenta')

%triangle
x2 = [8; 10; 10];
y2 = [0; 0; 2];
patch(x2,y2,'green')
```

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/7/ex7.png)
