
> # Exercise 10
> Draw a Captcha image using some randon numbers;The image is binary and has white numbers and a black background. 
***
>CODE

Main Program
```ruby
 
close all
clear all
clc
pic=zeros(100,400);
pic(1:100,100:100:400)=1;
for i=1:4
   d=randi(10);
   add="images\numbers\"+int2str(d-1)+".png";
   a=imread(add);
   for r=1:100
       for k=1:100
           c=(i-1)*100+k;
           pic(r,c)=(255-a(r,k));
       end
   end    
end 
figure;
pic=im2bw(pic);
imshow(pic)
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/f252686eab76eab3b8a80fa18ed263105af2742a/excersiecs/alirezachaji/10/Exce10.png)
***
