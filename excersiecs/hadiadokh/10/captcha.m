clc;
clear;
close all;
pic=im2bw(imread('pic.jpg'));
image=zeros(0,0,'logical');
for i=0:3
    a=randi([0,9]);
    b=a*110+1;
    c=i*110+1;
    image(1:size(pic,1),c:c+110) = pic(1:size(pic,1), b:b+110,:);
end    
figure;
imshow(image);
