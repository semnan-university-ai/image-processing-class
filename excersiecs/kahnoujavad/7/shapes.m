clc;
close all;
<<<<<<< Updated upstream
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
=======
th=3;
m=50;
r=[250 250];
a0=r(1,1);
b0=r(1,2);
c0=1/sqrt(3);
img=zeros(500,500);
img1=zeros(500,500);
img2=zeros(500,500);
im3=zeros(500,500);
%regtangle
for i=1 : 500
    for j=1 : 500
        if max(abs(r(1,1)-i) , 0.5*abs(r(1,2)-j)) == m 
>>>>>>> Stashed changes
            img(i, j) = 255;
        end
    end
end
<<<<<<< Updated upstream
%Rhombus
for i=1 : 500
    for j=1 : 500
        if a-th <= abs(p(1,1)-i)+ 1.68*abs(p(1,2)-j) && abs(p(1,1)-i)+ 1.68*abs(p(1,2)-j) <= a+th 
=======
%square
for i=1 : 500
    for j=1 : 500
        if max(abs(r(1,1)-i) , abs(r(1,2)-j)) == m 
>>>>>>> Stashed changes
            img1(i, j) = 255;
        end
    end
end
<<<<<<< Updated upstream
%square
for i=1 : 500
    for j=1 : 500
        if max(abs(p(1,1)-i) , abs(p(1,2)-j)) == a 
=======
%Rhombus
for i=1 : 500
    for j=1 : 500
        if m-th <= abs(r(1,1)-i)+ 1.68*abs(r(1,2)-j) && abs(r(1,1)-i)+ 1.68*abs(r(1,2)-j) <= m+th 
>>>>>>> Stashed changes
            img2(i, j) = 255;
        end
    end
end
<<<<<<< Updated upstream
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
=======

%Triangle
for a=1 : 500
    for b=1 : 500
          mo= [abs(a+(b-b0)/c0-a0) abs(a-(b-b0)/c0-a0) abs(a-a0+m)] ;         
        if m-th <= max(mo) && max(mo)<= m 
            img3(a, b) = 255;
        end
    end
end
imshow(img);
figure;
imshow(img2);
figure;
imshow(img3);
figure;
imshow(img1);


>>>>>>> Stashed changes
