
close all
clear all
clc
a=imread('C:\Users\as\Downloads\zelda.png');
c=imread('C:\Users\as\Downloads\zelda.png');
b=size(a)
m=b(1);
n=b(2);
n=n+1;
m=m+1;
for i=1:b(1)
    for j=1:b(2)
        c(n-j,i)=a(i,j);
        
    end
end
imshow(c)