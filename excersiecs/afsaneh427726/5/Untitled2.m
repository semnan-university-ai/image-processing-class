clc;
clear data;
clear all;
image=imread('C:\Users\as\Desktop\WhatsApp Image 2021-03-13 at 01.17.47.jpeg');
image=rgb2gray(image);
% imshow(image)
%  image=im2bw(image,0.5);
imshow(image)
image=imresize(image,0.5);
% imshow(image)
w=ones(540,152);
image(1:540,1:152)=w;
imshow(image)
figure;
for i=1:540
    for j=1:152
        image(i,153-j)=image(i,j+152);
    end
end
imshow(image)