clc;
close all;
clear all; 

m =20;
n =400;

imgchess = zeros(n);
for i=1:m*2:n
    for j=1:m*2:n
        imgchess(i+0:m+i-1,0+j:m+j-1)=1;
        imgchess(n+i:m*2+i-1,m+j:m*2+j-1)=1;
    end
end
imshow(imgchess); 