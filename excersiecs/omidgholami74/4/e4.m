clc;
close all;
clear all;

files =dir('benchmark/*.png');
n= size(files);
blankImage=zeros(500,500);

for k =1:20
        name =files(k).name;
        img_cuted=image_cut(name,100);
        images=img_cuted;
        for i=1:100:500
            for j=1:100:500
                blankImage(i,j)= img_cuted
            end
        end
end
