clc;
close all;
clear all;

image_zelda =imread('C:\Program Files\Polyspace\R2019b\bin\img\zelda.png');
subplot(1,2,1); imshow(image_zelda);

eleft=[208 269 231 251 262 269 233 280];
eright=[302 270 326 251 348 266 329 278];
image_zelda = insertShape(image_zelda,'FilledPolygon',{eleft,eright},'Color',[0 0 0],'Opacity',1);
subplot(1,2,2); imshow(image_zelda);