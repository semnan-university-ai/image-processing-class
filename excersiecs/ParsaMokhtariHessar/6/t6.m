clc;
close all;
clear all;
r=10;
image=zeros(256*r,256*r);
imagesize=size(image);
w=0;
p=0;
for i=1:imagesize(1,1) 
    if w==256
        break;
    end
    for j=1:imagesize(1,2)
           image(i,j)=w;            
    end
    if p==r
        w=w+1;
        p=0;
    end
    p=p+1;
end
figure,
imshow(uint8(image));
%imsave;