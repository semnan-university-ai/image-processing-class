close all
clear all
clc
orginal=imread('benchmark\girl.png');  % load original
orginal=imresize(orginal,[400,400]);
figure()
imshow(orginal)              % show orignal
title('Original Image')
new_image(:,:,1)=orginal(:,:,3);
new_image(:,:,2)=orginal(:,:,2);
new_image(:,:,3)=orginal(:,:,1);
new_image=imresize(new_image,[400,400]);
figure()
imshow(new_image);    % show new
title('new image');