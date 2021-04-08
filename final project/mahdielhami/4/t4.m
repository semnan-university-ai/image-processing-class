clc;
close all;
clear all;
temp = zeros(500, 500);
imgsize=size(temp);
pos=[1,100;101,200;201,300;301,400;401,500];
img1=imread('img\lena.png');
img1=rgb2gray(img1);
img1=imresize(img1,[100,100]);
%-----------------------------------
img3=imread('img\arctichare.png');
img3=rgb2gray(img3);
img3=imresize(img3,[100,100]);
%-----------------------------------
img4=imread('img\baboon.png');
img4=rgb2gray(img4);
img4=imresize(img4,[100,100]);
%-----------------------------------
img2=imread('img\airplane.png');
img2=rgb2gray(img2);
img2=imresize(img2,[100,100]);
%-----------------------------------
img5=imread('img\peppers.png');
img5=rgb2gray(img5);
img5=imresize(img5,[100,100]);
%-----------------------------------
img6=imread('img\girl.png');
img6=rgb2gray(img6);
img6=imresize(img6,[100,100]);
%-----------------------------------
img7=imread('img\frymire.png');
img7=rgb2gray(img7);
img7=imresize(img7,[100,100]);
%-----------------------------------
img8=imread('img\serrano.png');
img8=rgb2gray(img8);
img8=imresize(img8,[100,100]);
%-----------------------------------
img9=imread('img\monarch.png');
img9=rgb2gray(img9);
img9=imresize(img9,[100,100]);
%-----------------------------------
img10=imread('img\watch.png');
img10=rgb2gray(img10);
img10=imresize(img10,[100,100]);
%-----------------------------------
%pos=[1,100;101,200;201,300;301,400;401,500];

s=[img1,img2,img3,img4,img5;img6,img7,img8,img9,img10;img1,img2,img3,img4,img5;img6,img7,img8,img9,img10;img1,img2,img3,img4,img5];

for n=1:5
for i = pos(n,1): pos(n,2)
    for m=1:5
       for j = pos(m,1): pos(m,2)
          temp(i,j)=s(i,j);
       end
    end
end
end

temp = uint8(temp);
imshow(temp);

