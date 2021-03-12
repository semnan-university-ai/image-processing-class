clc;
close all;
clear; 

simg=400;
sq=20;
imgchess = zeros(simg);
for i=1:sq*2:simg
    for j=1:sq*2:simg
        imgchess(0+i:sq+i-1,0+j:sq+j-1)=1;
        imgchess(sq+i:sq*2+i-1,sq+j:sq*2+j-1)=1;
    end
end
imshow(imgchess); 