close all
clear all
clc
a=imread("https://i.ibb.co/Gp1N4GW/lena.png");
imshow(a);
n=size(a);
l=input("Enter length of cropping area: ");
w=input("Enter length of cropping area: ");
x=ceil((n(1)-l)/2);
y=ceil((n(2)-w)/2);
pic=zeros(l,w);
for i=1:l
    for j=1:w
        pic(i,j,1:n(3))=a(x+i,y+j,1:n(3));
    end
end
pic=uint8(pic);
figure('Name','Cropped Image');
imshow(pic)
