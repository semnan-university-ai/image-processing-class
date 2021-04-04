close all
clear all
clc

image=imread("benchmark/serrano.png");
i = imread("benchmark/serrano.png");
i=imresize(i,[512,512]);
figure;
imshow(i);
imagesize=size(i);
for k=1:1:imagesize(1,1)
    for l=1:1:imagesize(1,2)
       
        a(k,l) = (.299*i(k,l,1))+(.587*i(k,l,2))+(.114*i(k,l,3));
    end
end
figure
imshow(a); 