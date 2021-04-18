clc;
clear;
close all;
for i= 1:3
 add =int2str(i)+".png";
 img=imread(add);
a=rgb2gray(img);
[m,n]=size(a); 
x = randi([0 ,255] , m ,n);
a(x<=0+2)=0;
a(x>=255-2)=255;
subplot(2,3,i), imshow(img);
subplot(2,3,i+3), imshow(a);

end
