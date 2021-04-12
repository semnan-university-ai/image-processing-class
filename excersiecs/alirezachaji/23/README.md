
> # Exercise 23
Write a program to calculate histogram of each color channel of an image. Histogram calculator should be a seperated function. 
***
>CODE
Main Program
```ruby
close all
clear all
clc
pic=imread('benchmark\fruits.png');
subplot(2,2,1);imshow(pic);
title('Original Image')
r=pic(:,:,1);
g=pic(:,:,2);
b=pic(:,:,3);
ch_hist(r);
subplot(2,2,2);bar(ans);
title('Red Histogram')

ch_hist(g);
subplot(2,2,3);bar(ans);
title('Green Histogram')

ch_hist(b);
subplot(2,2,4);bar(ans);
title('Blue Histogram')
 
```
Function
```ruby
  
function his=ch_hist(pic)
n=size(pic);
his=zeros(1,255);
x=[1:255];
for k=1:255
    s=0;
    for i=1:n(1)
        for j=1:n(2)
            if(pic(i,j)==k)
                s=s+1;
            end    
        end
    end
    his(k)=s;
end  
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/adeace4ac5778db155e9302290f15a54b2533e3f/excersiecs/alirezachaji/23/Exce23.png)
