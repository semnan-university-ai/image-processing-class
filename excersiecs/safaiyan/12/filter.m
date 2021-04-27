clc;
close all;
clear all;
%gereftan tasvir va gray kardan
img=rgb2gray(imread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\benchmark\lena.png'));
[a,b] = size(img);
 subplot(2,2,1);
 imshow(img);title('tasvir asli');
 %ijad noise
for i=1:30000
        X=randi([1,a]);
        Y=randi([1,b]);
        img(X,Y)=randi([0,1])*255;
end
subplot(2,2,2);
imshow(img);title('noise');
%hazfe noise ba filter miane
n = im2double(img);
p = [];
for i=2:a-1
    for j=2:b-1
            p(1) = n(i-1,j-1);
            p(2) = n(i-1,j) ;
            p(3) = n(i-1,j+1);
            p(4) = n(i,j-1);
            p(5) = n(i,j+1);
            p(6) = n(i+1, j-1);
            p(7) = n(i+1,j);
            p(8) = n(i+1,j+1);
            n(i,j) = median(p);
    end
end 
subplot(2,2,3);
imshow(n);title('filter miane');
%hazfe noise ba filter miangin
m = im2double(img);
for i=2:a-1
    for j=2:b-1
            p(1) = m(i-1,j-1);
            p(2) = m(i-1,j) ;
            p(3) = m(i-1,j+1);
            p(4) = m(i,j-1);
            p(5) = m(i,j+1);
            p(6) = m(i+1, j-1);
            p(7) = m(i+1,j);
            p(8) = m(i+1,j+1);
            m(i,j) = mean(p);
    end
end 
subplot(2,2,4)
imshow(m);title('filter miangin');