clc;
close all;
clear;

H = 800;
W = 800;
sq = 8;
I = chessboard(W,H,sq);
imshow(I);  
function [a] = chessboard(W,H,sq)
L1 = floor(H/sq);
L2 = floor(W/sq);
z=1;
for m=1:L1:H
    if z==0
        z=1;
    else
        z=0;
    end
    for n=1:L2:W
        
        a(m:m+L1-1,n:n+L2-1)= z;
        if z==0
            z=1;
        else
            z=0;
        end
    end
    
end
end