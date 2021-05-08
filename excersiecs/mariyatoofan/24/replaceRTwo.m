clc;
clear;
close all;

watch=imread("../../../benchmark/watch.png");
[a,b,c]=size(watch);
imshow(watch)
pool=imread("../../../benchmark/pool.png");
pool=imresize(pool,[a b]);
figure;
imshow(pool);
watchR = watch(:, :, 1);
poolR = pool(:, :, 1);
watch(:, :, 1)=poolR;
pool(:, :, 1)=watchR;
figure;
imshow(watch);
figure;
imshow(pool); 
