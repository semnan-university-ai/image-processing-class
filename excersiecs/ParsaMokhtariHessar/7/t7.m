clc;
close all;
clear all;
r = 50;
t = 2; % threshhold
p = [250 250];
image = zeros(500,500);
image1 = zeros(500,500);
image2 = zeros(500,500);
image3 = zeros(500,500);
%square
for i=1 : 500
    for j=1 : 500
        if max(abs(p(1,1)-i) , abs(p(1,2)-j)) == r 
            image(i, j) = 255;
        end
    end
end
%rectangle
for i=1 : 500
    for j=1 : 500
        if max(abs(p(1,1)-i) , 0.5*abs(p(1,2)-j)) == r 
            image1(i, j) = 255;
        end
    end
end
%Rhombus
for i=1 : 500
    for j=1 : 500
        if r-t <= abs(p(1,1)-i)+ 1.68*abs(p(1,2)-j) && abs(p(1,1)-i)+ 1.68*abs(p(1,2)-j) <= r+t 
            image2(i, j) = 255;
        end
    end
end

x0=p(1,1);
y0=p(1,2);
t0=1/sqrt(3);
%Triangle
for x=1 : 500
    for y=1 : 500
          pri= [abs(x+(y-y0)/t0-x0) abs(x-(y-y0)/t0-x0) abs(x-x0+r)] ;         
        if r-t <= max(pri) && max(pri)<= r 
            image3(x, y) = 255;
        end
    end
end

figure,
imshow(image);
%imsave
figure,
imshow(image1);
%imsave
figure,
imshow(image2);
%imsave
figure,
imshow(image3);
%imsave
