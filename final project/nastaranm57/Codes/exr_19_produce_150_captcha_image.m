clc;
close all;
clear;

address = 'C:/Users/kam/Desktop/New folder (4)/';
save_adress = 'C:\Users\kam\Desktop\New folder (4)\Save image\';

alphabet_count = 4;
width = 512;
height = 256;

[image_name,image_count, alphabet] = Read_Alphabet(address);

for j=1:150
    Create_150_Captcha_Image(alphabet, alphabet_count, image_name, image_count, width, height, save_adress)
end
