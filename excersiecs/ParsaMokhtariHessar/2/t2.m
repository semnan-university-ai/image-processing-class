clc;
close all;
clear all;
r = 200;
t = 200 % threshhold;
p = [300 300];
image = zeros(1000,1000);
for i=1 : 1000
    for j=1 : 1000
        if (p(1,1)-i)^2 +(p(1,2)-j)^2 <= r^2+t && (p(1,1)-i)^2 +(p(1,2)-j)^2 >= r^2-t
            image(i, j) = 255;
        end
    end
end

figure,
imshow(image);
%imsave