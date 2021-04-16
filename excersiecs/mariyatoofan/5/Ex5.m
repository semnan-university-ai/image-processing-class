clc;
clear;
close all;

I = zeros(200);
Intensity = 0:1/200:1;

for i = 1:200
    
    I(i,:) = Intensity(i);
    
end

imshow(I);