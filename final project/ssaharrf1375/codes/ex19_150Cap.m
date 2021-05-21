clc;
close all;
clear;

address = 'C:\Program Files\Polyspace\R2019b\bin\prj\';
save_address = 'C:\Program Files\Polyspace\R2019b\bin\prj\Saveimg\';

alph_count = 5;
wi = 512;
he = 256;

[img_name,img_count, alph] = Read_Alpha(address);

for j=1:150
    Create_150_Cap_Img(alph, alph_count, img_name, img_count, wi, he, save_address)
end