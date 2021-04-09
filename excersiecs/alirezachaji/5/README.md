> # Exercise 5
> 5. Draw a picture of an incomplete jar on paper and complete the picture with the help of MATLAB software; In fact, paste the symmetry of the image into the    original image and create a complete jar.
***
>CODE

```ruby
close all
clear all
clc
a=imread("benchmark\kozeh.bmp");
a=rgb2gray(a);
imsize=size(a);
out_im=ones(imsize(1),2*imsize(2));
imshow(a)
for i=1:imsize(1)
    for j=1:imsize(2)-1
       out_im(i,j)=a(i,j);
       out_im(i,(imsize(2)+j-1))=a(i,imsize(2)-j);
    end
end 
figure;
imshow(out_im)
imwrite(out_im,"out_im.png")
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/359d9bf5deaea0d6e03754fa362704e2563d8fbd/excersiecs/alirezachaji/5/kozeh.bmp)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/359d9bf5deaea0d6e03754fa362704e2563d8fbd/excersiecs/alirezachaji/5/Exce05.png)
