clc;clear;close all;

img=imread("../../../benchmark/cat.png");
imgsc=img;
[xs,ys,zs]=size(img);
for i= 1:xs
    for j =1:ys
        for k=1:zs
            imgsc(i,j,k)=fix(img(i,j,k)/51)*51;
        end
    end
end
imshow(imgsc);
