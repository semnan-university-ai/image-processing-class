clc;
clear;
close all;

picList=dir('10\number\*.png');

tedad =4;

capchaPic=zeros(100,68*tedad,'uint8');
tempPicList=struct('name',{});

for i=1 : tedad
    x=randi([1,10]);
tempPicList(i).name = picList(x).name;
end

for i=1 :tedad
    tempPic=imread(tempPicList(i).name);
    tempPic =rgb2gray(tempPic);
    
        for xi=1: 68
            for yi=1 : 100
                capchaPic(yi,(i*68)-67+xi)=tempPic(yi,xi);
            end
        end
    
end

%noise
picSize=size(capchaPic); 
noise=100;

x = randi([0,255],picSize(1),picSize(2));
capchaPic(x <= noise+0) = 0;  
capchaPic(x >=255-noise) = 255;

imshow(capchaPic);