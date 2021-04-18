clc;
close all;
clear all;
a = 50;
th = 3; % threshhold
p = [250 250];
img = zeros(500,500);
img1 = zeros(500,500);
img2 = zeros(500,500);
img3 = zeros(500,500);

%rectangle
for i=1 : 500
    for j=1 : 500
        if max(abs(p(1,1)-i) , 0.5*abs(p(1,2)-j)) == a 
            img(i, j) = 255;
        end
    end
end
%Rhombus
for i=1 : 500
    for j=1 : 500
        if a-th <= abs(p(1,1)-i)+ 1.68*abs(p(1,2)-j) && abs(p(1,1)-i)+ 1.68*abs(p(1,2)-j) <= a+th 
            img1(i, j) = 255;
        end
    end
end
%square
for i=1 : 500
    for j=1 : 500
        if max(abs(p(1,1)-i) , abs(p(1,2)-j)) == a 
            img2(i, j) = 255;
        end
    end
end
m0=p(1,1);
n0=p(1,2);
th0=1/sqrt(3);
%Triangle
for x=1 : 500
    for y=1 : 500
          pri= [abs(x+(y-n0)/th0-m0) abs(x-(y-n0)/th0-m0) abs(x-m0+a)] ;         
        if a-th <= max(pri) && max(pri)<= a 
            img3(x, y) = 255;
        end
    end
end

figure,
imshow(img);
figure,
imshow(img1);
figure,
imshow(img2);
figure,
imshow(img3);
