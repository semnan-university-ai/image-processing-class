clc;
close all;
clear;

test   = imread('C.jpg');
     ocrResults = ocr(test);
     recognizedText = ocrResults.Text;
     figure;
     imshow(test);
     m=ocr(test);
 disp(m.Text);

