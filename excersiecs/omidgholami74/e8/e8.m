clc;
close all;
clear all;


deg=[45 90 120 180]
sizeDeg=size(deg)
for i=1:sizeDeg(2)
    figure;
    imshow(e8_rotate('airplane.png',deg(i)));
end
