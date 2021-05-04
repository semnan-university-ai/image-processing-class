clc;
close all;
clear;


watch_image = imread("../../../benchmark/watch.png");
pool_image = imread("../../../benchmark/pool.png");
watch_image = imresize(watch_image, [383 510]);
% [rows, cols, chn] = size(image);
% figure;
% imshow(watch_image);
% imshow(pool_image);

temp = watch_image(:,:,1);
watch_image(:,:,1) = pool_image(:,:,1);
pool_image(:,:,1) = temp(:,:);

imshow(watch_image);
figure;

imshow(pool_image);