clc;
close all;
clear;
width = 200;
height = 500;
for i=1:2
alphabet= Data();

image=creat(alphabet,5);
    
image= imnoise(image,'salt & pepper',0.24);
image=rotate(image);


imshow(image);
ocr(image)
end
