  
close all
clear all
clc
a=imread('C:\Users\as\Downloads\mountain.png');
% a=rgb2gray(a);
%   imtool(a)

for j=1:640 %arze tasvir
    for i=1:200
     if 150<a(i,j)
         a(i,j)=0;
     end
     if a(i+1,j)<150
         break;
     end
    end
end

imshow(a)