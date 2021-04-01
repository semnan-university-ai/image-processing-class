
clc;
close all;
clear;
image=imread('kk.png');
image=rgb2gray(image);
[x,y]=size(image);
 imshow(image), title(' image');
figure;
symmetry = zeros(x, y*2,'uint8');
% image =zeros(x,y*2);
% resultimg=uint8(image);

for i=1:x
    for j=1:y
        symmetry(i,j) = image(i,j);
          symmetry(i,y+j)=image(i,y-j+1);
    end
end

imshow(symmetry), title('out');