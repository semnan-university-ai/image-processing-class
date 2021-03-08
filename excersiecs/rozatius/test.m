clc;
close all;
clear all;
image = imread("../../benchmark/airplane.png");
image = imresize(image, [150 150]);
imagegray = rgb2gray(image);

figure;
imshow(image);
figure;
imshow(imagegray);

for i = 1 : 10
    if (mod(i,2) == 0)
        i;
    elseif (i == 5)
        "hi";
    else
        0;
    end
end

i=2;
while(i <10)
    i=i + 1;
end