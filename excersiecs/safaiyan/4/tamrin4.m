clc;
close all;
clear;

imgdir = 'C:\Users\Nakisa™\Documents\GitHub\image-processing-class\benchmark';
imginfo = dir(fullfile(imgdir));
imginfo([imginfo.isdir]) = []; 
n = length(imginfo);
img = uint8(ones(500 , 500));
i = 1;
j = 1;
for s = 1 : 25 
    filename = fullfile(imgdir, imginfo(s).name);
    input = imread(filename);
    if size(input , 3 ) == 3 
        image = rgb2gray(input);
    else 
        image = input;
    end
    
    row = size(image , 1); 
    col = size(image , 2);
    start_i = row - 100 + 1;
    start_j = col - 100 + 1;
    
    cut = image(start_i : end , start_j : end);
    img(i : i + 100  - 1 , j : j + 100 - 1) = cut;
    
    j = j + 100;
    if j == 501
        i = i + 100;
        j = 1;
    end
end
imshow(img);