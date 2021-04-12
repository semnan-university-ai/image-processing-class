close all
clear all
clc
pic1=imread('benchmark\watch.png');
pic1=imresize(pic1,[383 510]);
pic2=imread('benchmark\pool.png');
subplot(1,4,1);imshow(pic1);
title('Original Image (watch)')
subplot(1,4,2);imshow(pic2);
title('Original Image (pool)')
rw=pic1(:,:,1);
rp=pic2(:,:,1);
pic2(:,:,1)=rw;
pic1(:,:,1)=rp;
subplot(1,4,3);imshow(pic1);
title('New Watch')
subplot(1,4,4);imshow(pic2);
title('New Pool')
