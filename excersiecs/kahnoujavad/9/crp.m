clc;
clear all;
close all;
r1=100;r2=300;c1=100;c2=300;
image=rgb2gray(imread("d:/image-processing-class/benchmark/fruits.png"));
subplot(1,2,1),imshow(image),title('asl');
row=(r2-r1);
col=((c2-c1));
crop=zeros(row,col,'uint8');

for i = 1:row
    for j = 1:col
        crop(i,j)=image((r1+i),(c1+j));
    end
end
subplot(2,2,2),imshow(crop),title('corp1 ');
%method 2
subImage = img(r1:r2, c1:c2, :);

subplot(2,2,4),imshow(subImage),title('corp 2');

