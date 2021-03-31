clc;
close all;
clear all;
% 
image_mountain =imread('C:\Program Files\Polyspace\R2019b\bin\img\mountain.png');
subplot(1,2,1); imshow(image_mountain);

eleft=[1 1 337 1 224 110 1 129];
eright=[368 1 640 1 640 106];
image = insertShape(image_mountain,'FilledPolygon',{eleft,eright},'Color',[0 0 0],'Opacity',1);
subplot(1,2,2); imshow(image);
