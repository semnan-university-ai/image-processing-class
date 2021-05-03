clc;
close all;
clear all;

img=imread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\benchmark\mountain.png');
subplot(1,2,1);
imshow(img);
for x=1:640
    for y=1:480
        if img(y,x)>200;
            img(y,x)=0;
        end
        if img(y+1,x)<150;
            break;
        end
    end
end
subplot(1,2,2);
imshow(img);