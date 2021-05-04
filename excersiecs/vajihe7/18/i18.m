clc;
close all;
clear all;

image =imread('watch.png');

r = image(:,:,1); 
g = image(:,:,2); 
b = image(:,:,3);
 a=90;
for i=290:589
   if a<0
       a=0;
   end
    for j=333+a:694-a
            if ~(r(i,j)>g(i,j) && g(i,j)>b(i,j)&& r(i,j+4)>g(i,j+4) && g(i,j+4)>b(i,j+4))
                image(i,j,1)=255;
                image(i,j,2)=255;
                image(i,j,3)=255;
            end
    end
    if i<500
        a=a-1;
    elseif i>560
        a=a+5;
    else
        a=a+1
    end
end
imshow(image);