clc;
clear;
close all;

orginalPic=imread('girl.png');
picSize=size(orginalPic);
grayPic=zeros(picSize(1),picSize(2),'uint8');

for i=1: picSize(1)
    for j=1 : picSize(2)
        grayPic(i,j)=(((orginalPic(i, j, 1)) * .299) + ((orginalPic(i, j, 2)) * .587) + ((orginalPic(i, j, 3)) * .144));
    end
end


imshow(grayPic);