clc
clear
close all
image=imread('girl.png');
subplot(2,2,1);imshow(image);
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
myimhist(r);
subplot(2,2,2);bar(ans);
title('Red Histogram')
myimhist(b);
subplot(2,2,3);bar(ans);
title('blue Histogram')
myimhist(g);
subplot(2,2,4);bar(ans);
title('green Histogram')
function [y]=myimhist(img)
[r,c]=size(img);
y=zeros(1,256);
for i=1:r
 for j=1:c
   z=img(i,j);
   y(z+1)=y(z+1)+1;
end
end
end
