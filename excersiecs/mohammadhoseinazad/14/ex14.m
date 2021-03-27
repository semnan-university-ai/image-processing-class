clc;
close all;
clear;

images = dir('D:\matlab\math\bin\nature\*.png');

for i= 1:length(images)
    image=(images(i).name);
    Image = imread(image);
     [rows, columns, numberOfColorChannels] = size(image);
     if numberOfColorChannels > 1
     % It's a true color RGB image.  We need to convert to gray scale.
         Igray = rgb2gray(Image);
     else
     % It's already gray scale.  No need to convert.
     Igray = Image;
     end
    
 
    subplot(6,2,i)
    imhist(Igray);
end