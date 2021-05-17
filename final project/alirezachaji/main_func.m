function [pic,code]=main_func(n,height,width)

%% parameters defining
[alphabet,code]=get_ch(n);
pic=zeros(height,width);

%% Joing random chars in a single image
pic=join_char(pic,alphabet,height,width,n);
% figure('Name',code);
% imshow(pic);

%% Invert a random part of the image
pic=rand_inv(pic,height,width);
% figure('Name',code);
% imshow(pic);

%% Add some salt & pepper noise to be more hard to read by OCR
pic=pepper_noise(pic,30);
%figure('Name',code);
imshow(pic);


end
