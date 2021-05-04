%Tamrin 16
 clear all     
 close all
clc
warning off
z=imread('zelda.png');
load('Tamrin16.mat')

[BW, maskedImage]= segmentImage(z, mask);  % call segmentImage function

subplot(131)
imshow(z)
title('Original Image')

subplot(132)
imshow(BW)            % BW image
title('BW Image')

subplot(133)
imshow(maskedImage)     % show masked image
title('masked Image')
s=uint8(z-maskedImage);  % chane the format to uint8
figure(2)                % open another figure
imshow(s)                % show image
title('Zelda without eye')    % add title