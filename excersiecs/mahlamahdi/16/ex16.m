clc;
clear;
close all;
a=imread('zelda.png');
b=a;

for i= 250:290
    for j=300:355
        b(i,j) = 140;
    end
end
for i= 250:290
    for j=200:259
        b(i,j) = 140;
    end
end
subplot(1,2,1), imshow(a);
subplot(1,2,2), imshow(b);

