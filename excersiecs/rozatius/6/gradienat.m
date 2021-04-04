clc;clear;close all;

img=zeros(256*3,'uint8');
for i = 0:255
    img((i*3)+1:(i*3)+3,1:256*3)=i;
end
subplot(1,2,1),imshow(img),title('example 1');

for i = 0:255
    img((i*3)+1:(i*3)+3,1:256*3)=fix(i/16)*17;
end
subplot(1,2,2),imshow(img),title('example 2');