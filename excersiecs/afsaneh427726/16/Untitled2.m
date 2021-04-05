  
close all
clear all
clc
a=imread('C:\Users\as\Downloads\zelda.png');
% a=rgb2gray(a);
  imtool(a)
for i=1:383
    for j=1:510
        if (i>254 && i<290 && j>208 && j<265)
            a(i,j)=130;
        end
        if  (i>249 && i<285 && j>302 && j<360)
            a(i,j)=140;
        end
    end
end
imshow(a);