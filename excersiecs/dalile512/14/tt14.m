clc;
close all;
clear all;

pictures=dir('Test/*.jpg');

for k =1:12
        pic=pictures(k).name;
        image=imread(pic);
        image=rgb2gray(image);
        subplot(3,4,k)
        imhist(image);

    
        
end



 
 