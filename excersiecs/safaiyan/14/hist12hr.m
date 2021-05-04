clc;
close all;
clear all;
for n=1:12
    i=imread(strcat('pic\',int2str(n),'.jpg'));
    i=rgb2gray(i);
    subplot(4,6,n*2-1),imshow(i),title(n);
    subplot(4,6,n*2),imhist(i);
end