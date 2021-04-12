close all;
clear all;
clc;


pic=imread('zelda.png');
pic1=pic;

for i= 250:290
    for j=300:355
        pic1(i,j) = 140;
    end
end

for i= 250:290
    for j=200:259
        pic1(i,j) = 140;
    end
end
subplot(1,2,1), imshow(pic);title('Zelda')
subplot(1,2,2), imshow(pic1);title('Censored Zelda')