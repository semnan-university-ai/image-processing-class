%Tamrin 17
clear all  % clear all variables
close all  % close all windows
clc        % clear command line
warning off  % ignore warnnings
z=imread('mountain.png');      % read image file
load('Tamrin_17.mat')          % load variables into memory

[BW, maskedImage]= segmentImage_Ex17(z,mask);  % run segmentImage_Ex17 function

subplot(131)                   % 1 row, 3 columns, choose 1st
 imshow(z)                     % show image        
title('Original Image')        % show title

subplot(132)                   % 1 row, 3 columns, choose 2nd
imshow(BW)                     % show BW image
title('BW Image')              % shw title

subplot(133)                   % 1 row, 3 columns, choose 3rd
imshow(maskedImage)            % show masked image
title('masked Image')          % add title
 s=uint8(z-maskedImage);        % change the logical to uint8 frmat
figure(2)                      % show figure
imshow(s)                      % show image
title('final Image')           % show title