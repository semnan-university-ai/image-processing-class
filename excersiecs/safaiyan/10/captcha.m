clc;
close all;
clear all;

fileNames = dir(fullfile('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\0-9'));
 
for k = 1:length(fileNames)
    filename = fileNames(k).name;
    img = imread(filename);
    //process it
    imwrite(img,filename);
end
