clc;clear;close all;
img=imread("../../../benchmark/mountain.png");
subplot(2,2,1),imshow(img),title('Orginal');
[m, n] = size(img);
for x=1:m
   for y=1:n
       if  (img(x,y) >223) && (img(x,y) <241) 
            img(x,y) = 0;
       end
   end
end
subplot(2,2,2),imshow(img),title('Edit');

A = im2double(img);

M = [];
%Median filter 
for i=2:m-1
    for j=2:n-1
            M(1) = A(i-1,j-1);
            M(2) = A(i-1,j) ;
            M(3) = A(i-1,j+1);
            M(4) = A(i,j-1);
            M(5) = A(i,j+1);
            M(6) = A(i+1, j-1);
            M(7) = A(i+1,j);
            M(8) = A(i+1,j+1);
            A(i,j) = median(M);
    end
end 
subplot(2,2,3),imshow(A),title('Edit and filter');