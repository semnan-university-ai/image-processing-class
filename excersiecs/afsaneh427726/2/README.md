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
![alt text](https://https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/2/soal2.jpg)
