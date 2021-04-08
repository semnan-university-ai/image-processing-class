  
close all
clear all
clc
image=imread('C:\Users\as\Downloads\zelda.png');
% a=rgb2gray(a);
%   imtool(a)
% imshow(image)
M=length(image(:,1))
N=length(image(1,:))
B=input('tool ra vared kon :   ')
A=input('arz ra vared kon :   ')
m=M/2;
n=N/2;
B=B/2;
A=A/2;
for i=1:M
    for j=1:N
       if(i<m-A ||i>m+A || j<n-B || j>n+B)
           image(i,j)=255;
       end
    end
end
figure;
imshow(image);
figure;