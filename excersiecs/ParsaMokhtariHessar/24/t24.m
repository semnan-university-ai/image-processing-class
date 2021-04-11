clc;
close all;
clear all;
imagepool = imread("../../../Benchmark/pool.png");
imagewatch = imread("../../../Benchmark/watch.png");
imagepool=imresize(imagepool,[512,512]);
imagewatch=imresize(imagewatch ,[512,512]);
imagePool(:,:,1) = imagewatch(:,:,1) ;
imagePool(:,:,2) = imagepool(:,:,2) ;
imagePool(:,:,3) = imagepool(:,:,3) ;
imageWatch(:,:,1) = imagepool(:,:,1);
imageWatch(:,:,2) = imagewatch(:,:,2);
imageWatch(:,:,3) = imagewatch(:,:,3);

figure,imshow(imagePool);
imsave;
figure,imshow(imageWatch);
imsave;