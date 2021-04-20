clc
close all
clear all

radius = input('Enter Radius : ');
X_center = input('Enter Point : ');
Y_center = X_center;

[X1,Y1]=midpoint_circle(radius);
A=zeros(1000);
A(sub2ind(size(A),X1+X_center,Y1+Y_center)) = 1;
figure;
imshow(A);

function [X,Y]=midpoint_circle(r)
    x = 0;
    y = r;
    p = (5 - r*4)/4;
    [X,Y]=circlePoints(x, y);
    while x < y
        x=x+1;
        if (p < 0)
            p =p+ 2*x+1;
        else
            y=y-1;
            p =p+ 2*(x-y)+1;
        end
        [xx,yy]=circlePoints(x, y);
        X=[X,xx];
        Y=[Y,yy];
    end
end

function [xx,yy]=circlePoints(x,y)
    if (x == 0)
        xx=[0 0 y -y];
        yy=[y -y 0 0];
        return;
    elseif x == y
        xx=[x -x x -x];
        yy=[y y -y -y];
        return;
    elseif x < y
        xx=[x -x x -x y -y y -y];
        yy=[y y -y -y x x -x -x];
        return;
    else
        xx=[];
        yy=[];
    end
end