close all
clear all
clc
a=imread("benchmark\kozeh.bmp");
a=rgb2gray(a);
imsize=size(a);
out_im=ones(imsize(1),2*imsize(2));
imshow(a)
for i=1:imsize(1)
    for j=1:imsize(2)-1
       out_im(i,j)=a(i,j);
       out_im(i,(imsize(2)+j-1))=a(i,imsize(2)-j);
    end
end 
figure;
imshow(out_im)
imwrite(out_im,"out_im.png")
    