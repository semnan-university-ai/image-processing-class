clc;
close all;
clear all;
img1=imread("boat.png");

x1=zeros([size(img1,1)*size(img1,2) 1]);
x2=zeros([size(img1,2)*size(img1,1) 1]);
deg = input('insert degree:');

img2=uint8(zeros([size(img1,1) size(img1,2) 3 ]));

a=1;
midx=ceil((size(img2,1)+1)/2);
midy=ceil((size(img2,2)+1)/2);

for i=1:size(img1,1)
    i1=i-midx;
    for j=1:size(img1,2)
        [t,r]=cart2pol(i1,j-midy);
        t1=radtodeg(t)+deg;
        t=degtorad(t1);
        [x,y]=pol2cart(t,r);
        x1(a)=round(x+midx);
        x2(a)=round(y+midy);
        a=a+1;
    end  
   
end

x1(find(x1 < 1))=1;
x2(find(x2 < 1))=1;
b=1;

for i=1:size(img1,1)
    for j=1:size(img1,2)
        img2(x1(b),x2(b),:)=img1(i,j,:);
       
        b=b+1;
    end
   
end
 imshow(img2);


