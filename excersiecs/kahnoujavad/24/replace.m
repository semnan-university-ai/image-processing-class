clc;
clear all;
close all;
img_watch = imread("D:/image-processing-class/benchmark/watch.png");
img_pool = imread("D:/image-processing-class/benchmark/pool.png");
subplot(2,2,1),imshow(img_watch),title("Orginal watch");
subplot(2,2,2),imshow(img_pool),title("Orginal pool");

[a,b,c] = size(img_watch);
[x,y,z] = size(img_pool);

temp_watch = img_watch(:,:,1);
temp_pool = img_pool(:,:,1);
for i=1:x
    for j=1:y
        img_watch(i,j,1) = temp_pool(i,j);
        img_pool(i,j,1) = temp_watch(i,j);
    end
end
subplot(2,2,3),imshow(img_watch),title("replace watch");
subplot(2,2,4),imshow(img_pool),title("replace pool");