close all
clear all
clc
a=imread("mountain.png");
[m,n] =size(a);
for i=1:150
    for j=1:639
        if (a(i,j))>200
            a(i,j)=0;
        end
        
    end
end


imshow(a);