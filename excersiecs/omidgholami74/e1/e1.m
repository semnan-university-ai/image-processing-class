clc;
close all;
clear all;

 n  = input("pleas enter a number as the chess dimension more than 8 : ");
while(n <8)
  n  = input("pleas enter a number as the chess dimension more than 8 : ");
end
areaOfpixel=floor(n/8);

chess =zeros(8,8);
for i=1:8
    for j=1:2:8
        if mod(i,2) == 0
           chess(i,j)=255;
           chess(i,j+1)=0;
        else
           chess(i,j)=0;
           chess(i,j+1)=255;
        end
            
    end
end

orginalSize = repelem(chess,areaOfpixel,areaOfpixel);
imshow(orginalSize)

