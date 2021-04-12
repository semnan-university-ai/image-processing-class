close all;
clear all;
clc;

pic=imread('girl.png');
pic=rgb2gray(pic);
imshow( pic);
[l,m] = size(pic);

for i =1:l
    for j=1:m
        negative_pic(i,j) = 255- pic(i,j);
    end
end

for i=1:4
   
   noise= input ("Enter  a number between 1 - 20:");
   x = randi([0 ,255] , l ,m);

   negative_pic(x<=0+noise)=0;
   negative_pic(x>=255-noise)=255;
   subplot(2,2,i),imshow(negative_pic);
   ave=mean(negative_pic);
   p(i)=mean(ave);

end
display(p);