clc;
clear;
close all;
%%%  image1 %%
image=imread('pool.png');
image=imresize(image,[200,200]);
red = image(:,:,1);

%%%  image2 %%

image2=imread('watch.png');
image2=imresize(image2,[200,200]);
red2 = image2(:,:,1);

%%% shift canal  %%

image2(:,:,1)=red;
image(:,:,1)=red2;

%%%   show  %%

subplot(1,2,1);imshow(image);title('Image 1','Color','r');
subplot(1,2,2);imshow(image2);title(' Image 2','Color','b');

