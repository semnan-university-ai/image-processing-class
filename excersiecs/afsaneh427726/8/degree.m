
clc;
clear;
x=imread('C:\Users\as\Downloads\fruits.png');

x=imresize(x,[200 200]);
% x=rgb2gray(x);
x3=double(x);
for i=1:400
for j=1:400
x1(i,j)=round((i-100).*cosd(45)+(j-100).*sind(45)+100);
x2(i,j)=round(-(i-100).*sind(45)+(j-100).*cosd(45)+100);
if(x1(i,j)<=200)&&(x1(i,j)>0)&&(x2(i,j)<=200)&&(x2(i,j)>0)
      a(i,j,:)=x3(x1(i,j),x2(i,j),:);
  end;
  end;
  end;
image(uint8(a));
%  imshow(a(i,j));
