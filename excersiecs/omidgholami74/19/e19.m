clc;
close all;
clear all;



imageList =dir('alpha_eng/*.png');
blankImage=[];
n=input("please insert Number of Characters")
for k =1:n
    rand=randi(24);
    deg=randi(180);
    temp=zeros(100,100);
        name =imageList(rand).name;
       image=imread(name);
       image=rgb2gray(image);
       
       image=e8_rotate(image,deg);
       [w,h]=size(image);
       temp(1:w,1:h) = image;
       blankImage =cat(2,blankImage,temp);
end
imshow(blankImage);