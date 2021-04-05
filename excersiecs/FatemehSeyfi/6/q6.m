clc;
clear all;
close all;
stripeWidth = 2;
imageRows = 512;    % Whatever...
imageColumns = 512; % Whatever...
% imageRows =input("please enter row:");
% imageColumns =input("please enter Columns:");
oneLine=ones(stripeWidth,imageColumns);
wholeImage=repmat( [oneLine;0*oneLine], imageRows/(2*stripeWidth),1);

imshow(wholeImage)
