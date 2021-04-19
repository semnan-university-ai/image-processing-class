  
close all
clear all
clc
a=imread('C:\Users\as\Downloads\pool.png');
a=rgb2gray(a);
  imtool(a)
for i=1:383
    for j=1:510
        if (i>235 && i<340 && j>355 && j<500)
            a(i,j)=48;
        end
%         if  (i>274 && i<308 && j>368 && j<438)
%             a(i,j)=44;
%         end
    end
end
imshow(a);