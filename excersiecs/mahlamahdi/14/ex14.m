clc
clear
close all
dataset= 0;
p=1;
for i=1:12
dataset=imread("dataset/"+int2str(i)+".jpg");
figure(1);
subplot(4,6,p),imshow(dataset); 
subplot(4,6,p+1),imhist(dataset);
title(i);
p =p+2;
end