> # Exercise 8
> Rotate an image in 45,90,120,180 degrees without using built-in MATLAB functions; In images where the image rotates out of square mode, set the blank pixels to black and ignore the out-of-bounds pixels. 
***
>CODE

Main Program
```ruby
close all
clear all
clc
a=imread("benchmark\lena.png");
CurvaJV=figure('Name','Original Image');
imshow(a);
b=a;
n=size(a);
b=a;
 %%%%%%%%%%%%%%%%%%%%%%% Flip Horizentaly  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b(1:n(1),n(2):-1:1,1:n(3))=a(1:n(1),1:n(2),1:n(3));
CurvaJV=figure('Name','Reverse Horizentaly');
imshow(b)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 45 Degree %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CurvaJV=figure('Name','45 Degree');
image_rotate(a,45);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 90 Degree %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CurvaJV=figure('Name','90 Degree');
image_rotate(a,90);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 180 Degree %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CurvaJV=figure('Name','120 Degree');
image_rotate(a,120);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 180 Degree %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CurvaJV=figure('Name','180 Degree');
image_rotate(a,180);
```
image_rotate Function
``` ruby
function pic=image_rotate(pic,angel)
n=size(pic);
v=deg2rad(angel);
r=ceil(n(1)*abs(cos(v))+n(2)*abs(sin(v)));                      
c=ceil(n(1)*abs(sin(v))+n(2)*abs(cos(v)));                     
pic2=zeros(r,c,n(3));
pic2=uint8(pic2);
midx=ceil((size(pic2,1))/2);
midy=ceil((size(pic2,2))/2);
for i=1:size(pic2,1)
    for j=1:size(pic2,2)                                                       
         xx= round((i-midx)*cos(v)+(j-midy)*sin(v)+ceil(n(1)/2));                                       
         yy= round(-(i-midx)*sin(v)+(j-midy)*cos(v)+ceil(n(2)/2));                             
         if (xx>=1 && yy>=1 ) 
             if ( xx<=n(1) &&  yy<=n(2) ) 
               pic2(i,j,1:n(3))=pic(xx,yy,1:n(3));  
             end  
         end
    end
end
imshow(pic2);
pic3=pic;
difx=ceil((r-n(1))/2);
dify=ceil((c-n(2))/2);
if (mod(angel,90)~=0)
for i=1:n(1)
    for j=1:n(2)
        pic3(i,j,:)=pic2(difx+i,dify+j,:);
    end
end
CurvaJV=figure('Name','Cutted Image');
pic3=uint8(pic3);
imshow(pic3)
end
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/ec436b2073664290ac3f0508f72503ef8aa13683/excersiecs/alirezachaji/8/Exce08.png)
***
