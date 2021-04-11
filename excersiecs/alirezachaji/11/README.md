
> # Exercise 11
> Create salt pepper noise on several images without using MATLAB built-in commands. 
***
>CODE

Main Program
```ruby
 
close all
clear all
clc
pepper_noise("benchmark\lena.png",10000);
pepper_noise("benchmark\cat.png",10000);
pepper_noise("benchmark\earth.png",10000);
pepper_noise("benchmark\ball.png",10000);
pepper_noise("benchmark\monarch.png",10000);
```
Function
```ruby
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Pepper_noise Function %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% This nunction get the address of an image and number of noise pixel%%%
%%%%%%%%%%%%%%%%%%%%% and add noise on the Image %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function pic=pepper_noise(add,ps)
pic=imread(add);
figure;
imshow(pic);
n=size(pic);
for i=1:ps
    x=randi(n(1));
    y=randi(n(2));
    z=round(mod(randi(10),2));
    pic(x,y,:)=z*255;
end
pic=uint8(pic);
figure;
imshow(pic);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/2687c7cd96689152e04a67441b485851d3ee9add/excersiecs/alirezachaji/11/Exce11.1.png)
***
