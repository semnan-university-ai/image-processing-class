clc;
clear;
close all;

I = zeros(1000);

Cx = 400;
Cy = 400;
r = 200;

for i = 1:1000
    for j=1:1000
        
        if (i-Cx)^2+(j-Cy)^2<=r^2
            I(i,j)=1;
        end
        
    end
end

imshow(I);

