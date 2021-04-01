clc;
close all;
clear all;

image1 =imread('d:\benchmark/pool.png');
figure;
imshow(image1);

% tabdil tasvir be khakestari
image1 =rgb2gray(image1);

% meghyas toup 
Ball=[415 285 60];

% ejad tasvir be size toup
image1 = insertShape(image1,'FilledCircle',Ball,...
    
% tabdil rang toup be background tasvir
'Color',[50 50 50],'Opacity',1);

namayesh tasvir
figure;imshow(image1);