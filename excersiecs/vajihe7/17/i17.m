clear;
close all;
clc;
image1 = imread('mountain.png');
figure;
imshow(image1)
image2=image1;
Color=200;
for i=1:639
    for j=1 : 150
        if image2(j+1,i)<Color;
            break;
        end
        if image2(j,i)>Color;
            image2(j,i)=0;
        end
        
    end
end
figure;
imshow(image2);