clc;
close all;
clear;

r = 100;
H = 1000;
W = 1000;
x = 300;
y = 500;
cr = circle1(W, H,x, y, r);
imshow(cr);

function [f] = circle1(W, H, x, y, r)

for m=1 : 1 : H
    for n=1 : 1 : W
        
        if floor(sqrt(power(m-y,2)+power(n-x,2))) > r
           f(m:m,n:n)=0;
        else
            f(m:m,n:n)=1;
        end
       
    end
end

end