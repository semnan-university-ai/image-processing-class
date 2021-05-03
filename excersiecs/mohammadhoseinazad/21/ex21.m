clc;
close all;
clear;

img=imread("../../../benchmark/girl.png");
%%img=imread("C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\girl.png");
imgcopy=img;
[X,Y,Z]=size(img);
for i= 1:X
    for j =1:Y
        for k=1:Z
            imgcopy(i,j,k)=fix(img(i,j,k)/61)*41;
        end
    end
end
imshow(imgcopy);