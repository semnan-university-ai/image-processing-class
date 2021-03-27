clc;
close all;
clear all;

image =imread('benchmark/zelda.png');
figure;
imshow(image);

eye_left=[213 275 235 279 261 275 236 262];
eye_right=[304 270 326 253 352 266 330 280];
colorCode=140;
image = insertShape(image,'FilledPolygon',{eye_left,eye_right},...
    'Color',[169 169 169],'Opacity',1);

figure;imshow(image);