% Tamrin 18
clear all          % clear all variables
close all          % close all windows
clc                % clear command line
warning off        % ignore warnings
z=imread('watch.png');     % read image 
load('Tamrin_18.mat')      % load variables 
z2=rgb2gray(z);            % change the color image to rgb
[BW, maskedImage]= segmentImage_Ex18(z,mask);   % call the segmentImage_Ex18 function

subplot(131)               % 1st row, 3rd column , choose 1st
imshow(z2)                 % show image
title('Original Image')    % add title

subplot(132)               % 1st row, 3rd column , choose 2nd
imshow(BW)                 % show BW image
title('BW Image')          % add title

subplot(133)               % 1 row, 3 columns , choose 3rd
imshow(maskedImage)        % show masked image
title('masked Image')      % show title
figure(2)                  % new figure
imshow(imcomplement(maskedImage))      % show negative image
title('final Image')       % add title