clc;
clear;
close all;

image=imread('lena.png');
image=rgb2gray(image);
imshow( image);
[m,n] = size(image);
for i =1:m
    for j=1:n
        negative_pic(i,j) = 255- image(i,j);
    end
end

for i=1:4
   noise= input ("Enter  a number between 1 - 20:");
x = randi([0 ,255] , m ,n);
negative_pic(x<=0+noise)=0;
negative_pic(x>=255-noise)=255;
subplot(2,2,i),imshow(negative_pic);
ave=mean(negative_pic);
b(i)=mean(ave);

end
display(b);
