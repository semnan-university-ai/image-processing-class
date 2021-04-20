clc;
close all;
clear all;
img1=imread('img\peppers.png');
img1=rgb2gray(img1);

img1=im2bw(img1);
img2=im2bw(img1);
img1=imresize(img1,[250,250]);
img2=imresize(img1,[250,250]);

temp1 = zeros(250, 250);
temp2= zeros(250, 250);

ran=randi([0 100],250,250);
  s1=0  ;
  s2=0;
  avg=[];
%p=1
for i=1:250
    for j=1:250
        if ran(i,j)<=1
            if img1(i,j)==0
                img1(i,j)=255;
            else
                img1(i,j)=0;
            end
        end
            
    end
end
s1=mean(img1,'all');
figure,
imshow(img1);
%p=2
for i=1:250
    for j=1:250
        if ran(i,j)<=5
            if img2(i,j)==0
                img2(i,j)=255;
            else
                img2(i,j)=0;
            end
        end
            
    end
end
s2=mean(img2,'all');

figure,
imshow(img2);
avr=[s1,s2];
avr
