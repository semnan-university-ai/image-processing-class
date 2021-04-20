
clc;
close all;
clear;


pic=zeros(255*3);
for i = 0:255
    pic((i*3)+1:(i*3)+3,1:256*3)=i/255;
end
imshow(pic);