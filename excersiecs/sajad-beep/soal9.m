clc;
clear;
I = imread('circuit.tif');
figure(1),
imshow(I);
J = imcrop(I,[0 0 200 190]);
figure(2),
imshow(J);
x=200;y=190;
X=zeros(x,y);
for i=1:x
    for j=1:y
        X(i,j)=I(i,j);
    end
end
figure(3),
imshow(uint8(X));