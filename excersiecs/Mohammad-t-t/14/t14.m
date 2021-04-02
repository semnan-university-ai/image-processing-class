clc;
clear;
close all;

picList=dir('14\view\*.jpg');

tedad =size(picList,1);

for i=1 :tedad
    tempPic=imread(picList(i).name);
    tempPic =rgb2gray(tempPic);
    
    subplot(4,3,i);
    imhist(tempPic);
end

