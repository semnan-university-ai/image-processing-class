close all
clear all
clc

image = imread("../../../benchmark/zelda.png");
[x,y] = size(image);

%Right Eye
for i=255:285
    for j=210:260
        image(i,j) = 149;
    end
end

%Left Eye
for i=250:280
    for j=300:350
        image(i,j,1) = 149;
    end
end

figure
imshow(image);