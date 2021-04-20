clc;
close all;
clear all;
% khandan tasvir
image =imread('d:\16 new\zelda.png');
figure;
% namayesh tasvir
imshow(image);

% ax ra ba estefade az arayehaye moshakhas shode midahim
eye_left=[213 275 235 279 261 275 236 262];
eye_right=[304 270 326 253 352 266 330 280];
colorCode=140;

% hazfee cheshmha
image = insertShape(image,'FilledPolygon',{eye_left,eye_right},...
    'Color',[168 168 168],'Opacity',1);

% namayesh tasvir bedone cheshm
figure;imshow(image);

% ba estefade az code aghaye gholami

