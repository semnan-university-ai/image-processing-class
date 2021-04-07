clear all;
clc;
clear;
H=imread('d:\tamrin\20\H.png');
A=imread('d:\tamrin\20\A.png');
D=imread('d:\tamrin\20\D.png');
I=imread('d:\tamrin\20\I.png');
imageList={ H A D I };
for i=1:4
     imageList{i}=imresize( imageList{i},[100,100]);
end
namepic=cat(2,imageList{1},imageList{2},imageList{3},imageList{4},imageList{5});
 imshow(namepic)