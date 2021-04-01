

> # Exercise 4.
> شکال هندسی مربع، مستطیل، لوزی، مثلث را بدون توابع متلب رسم کنید.
> 
***
>CODE
rectangle
```ruby
clc;
close all;
clear all;

length=5;
width=2;
xCentre=0;
yCentre=0;

u=[-1 1 1 -1];
x=[u u(1)].*(length/2);
u=circshift(u,[0 -1]);
y=[u u(1)].*(width/2);
plot(x,y,'k');
xlim([x(1)-2,x(2)+2]);
ylim([y(3)-2,y(2)+2])
```
***
![image](https://user-images.githubusercontent.com/48456571/113290007-41535800-9306-11eb-9fb3-88c978c8b43e.png)

Diamond
```ruby
clc;
close all;
clear all;

length=5;
width=2;
xCentre=0;
yCentre=0;

u=[-1 1 1 -1];
x=[u u(1)].*(length/2);
u=circshift(u,[0 -1]);
y=[u u(1)].*(width/2);
plot(x,y,'k');
xlim([x(1)-2,x(2)+2]);
ylim([y(3)-2,y(2)+2])
```
***
![image](https://user-images.githubusercontent.com/48456571/113290310-b45cce80-9306-11eb-84a6-66664dbef183.png)

square
```ruby
clc;
close all;
clear all;


x = [1.0, 1.0, 3.0,3.0];
y = [0,2 , 2,0];
fill(x, y, 'y')
hold on
```
***

![image](https://user-images.githubusercontent.com/48456571/113295739-d148d000-930d-11eb-8285-ffa731ad154e.png)


triangle
```ruby
clc;
close all;
clear all;

x = [0.25, 1.0, 1.0];
y = [0.25, 0.25, 1.0];
fill(x, y, 'y')
hold on
```
***

![image](https://user-images.githubusercontent.com/48456571/113295838-f4737f80-930d-11eb-8481-5731f4403683.png)


</div>
