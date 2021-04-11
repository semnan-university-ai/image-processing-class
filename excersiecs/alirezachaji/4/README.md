> # Exercise 4
> Create a 500 by 500 image that includes the bottom right corner of the benchmark images; Separate 100 by 100 squares from each image.
***
>CODE

Main Program
```ruby
close all
clear all
clc
pic=zeros(500,500);
image_file=dir('*.png');
d=0;
for i=1:5
    for j=1:5
        d=d+1;
        a=image_cut(image_file(d).name);
        for ii=1:100
            for jj=1:100
                pic(i*100+ii-100,j*100+jj-100)=a(ii,jj);
            end
        end    
    end          
    
end 
pic=uint8(pic);
imshow(pic)
```
****
Image_cut function
```ruby
function img_out=image_cut(address)
% this function recieve and image address convert it to gray mode and 
%return a 100 x 100 peace of that 
a=imread(address);
a=uint8(a);
n=size(size(a));
if (n(2)==3)
    a=rgb2gray(a);
end 
pic=zeros(100,100);
imsize=size(a);
for i=1:100
    for j=1:100
        pic(i,j)=a((imsize(1)-101+i),(imsize(2)-101+j));
    end
end
pic=uint8(pic);
img_out=pic;
```
***
![image](https://github.com/semnan-university-ai/image-processing-class/blob/08ef1711f0eab56bf8be8857a27ffcf699e017f3/excersiecs/alirezachaji/4/Exce04.png)


