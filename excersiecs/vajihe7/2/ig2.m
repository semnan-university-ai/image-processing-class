clc;
close all;
clear all;
image=zeros(1000,1000);

b1=input(' markaze dayere ='); %row
b2=input(' markaze dayere ='); %column
a =input('shoaa dayere ='); %shoaa dayere

centeral = {b1,b2}; %midpoint
image(centeral{:})=1;

pic = bwdist(image) <= a ;

imshow(pic)