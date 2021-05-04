
clc;
clear;
close all;


V=imread('H.png');
J=imread('G.png');
Y=imread('j.png');
H=imread('V.png');

imgList={ V J Y H };

for i=1:4
     imgList{i}=imresize( imgList{i},[200,200]);
end
vajihe=cat(2,imgList{1},imgList{2},imgList{3},imgList{4});
 imshow(vajihe)
