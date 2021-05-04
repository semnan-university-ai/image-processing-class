close all
clear all
clc

image_watch = imread("../../../benchmark/watch.png");
image_pool = imread("../../../benchmark/pool.png");

[x,y,z] = size(image_watch);
[s,t,u] = size(image_pool);

temp_watch = image_watch(:,:,1);
temp_pool = image_pool(:,:,1);

for i=1:s
    for j=1:t
        image_watch(i,j,1) = temp_pool(i,j);
        image_pool(i,j,1) = temp_watch(i,j);
    end
end

subplot(1,2,1);
imshow(image_watch);
subplot(1,2,2);
imshow(image_pool);