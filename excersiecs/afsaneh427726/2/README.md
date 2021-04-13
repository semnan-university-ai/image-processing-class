> # Exercise 2
Write a program that takes a number as the radius of a circle and a number as the center of the circle, in a 1000 x 1000 pixel image and displays that circle in white. 
***
>CODE

```ruby
a=zeros(1000,1000);
r =input('shoaa ='); %radius
% m=r;
x=input('X markaze=');
y=input('y markaze =');

a(x,y)=1;

a= bwdist(a) <= r;
imshow(a) 
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/57f019a9966eda747f652d713fcc5262c5b43162/excersiecs/alirezachaji/2/Exce02.png)
