clc;clear;close all;
img=rgb2gray(imread("../../../benchmark/cat.png"));
subplot(1,4,1),imshow(img),title('Orginal');
[m, n] = size(img);
 
for i=1:100000
    X=randi([1,m]);
    Y=randi([1,n]);
    img(X,Y)=randi([0,1])*255;
end
subplot(1,4,2),imshow(img),title('Add noise');

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
subplot(1,4,3),imshow(A),title('Add Median filter');
%Mean filter 
B = im2double(img);
for i=2:m-1
    for j=2:n-1
            M(1) = B(i-1,j-1);
            M(2) = B(i-1,j) ;
            M(3) = B(i-1,j+1);
            M(4) = B(i,j-1);
            M(5) = B(i,j+1);
            M(6) = B(i+1, j-1);
            M(7) = B(i+1,j);
            M(8) = B(i+1,j+1);
            B(i,j) = mean(M);
    end
end 
subplot(1,4,4),imshow(B),title('Add Mean filter ');