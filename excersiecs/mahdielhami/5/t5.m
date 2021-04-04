clc;
close all;
clear all;
img1=imread('img\koze.jpg');
img1=im2bw(img1);
img1=imresize(img1,[250,250]);
temp = zeros(250, 250);

for i=1:250
    for j=1:250
        if img1(i,j)==0
            t=121-j;
            s=121+t;
            img1(i,s)=0;
            
        end
       
    end
end
imshow(img1)