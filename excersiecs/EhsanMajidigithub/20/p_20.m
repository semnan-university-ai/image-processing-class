clc;
clear;
close all;


i_1=imread('carec1.png');
i_2=imread('carec2.png');
i_3=imread('carec3.png');
i_4=imread('carec4.png');
i_5=imread('carec5.png');

imgList={ i_1 i_2 i_3 i_4 i_5 };

for i=1:5
     imgList{i}=imresize( imgList{i},[400,400]);
end
WriteText=cat(2,imgList{1},imgList{2},imgList{3},imgList{4},imgList{5});
 imshow(WriteText)
