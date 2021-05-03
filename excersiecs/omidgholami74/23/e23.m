clc;
close all;
clear all;

pic=imread('benchmark/sails.png');


hisR=his(pic,1);
hisG=his(pic,2);
hisB=his(pic,3);
 figure;bar(hisR);title('Red')
 figure;bar(hisG);title('Green')
 figure;bar(hisB);title('Blue')