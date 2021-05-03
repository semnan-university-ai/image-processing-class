clear all
clc;
close all;

watch = imread('benchmark/watch.png');
pool= imread('benchmark/pool.png'); 
watch=imresize(watch,[383 510]);   
figure,imshow(watch); 
figure,imshow(pool);

redWatch=watch(:, :,1); 
redPool=pool(:, :,1); 
watch(:,:,1)=redPool(:,:,1);        
pool(:, :,1)=redWatch(:,:,1);
figure, imshow(watch);             
figure, imshow(pool);