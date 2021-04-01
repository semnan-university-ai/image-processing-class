clc;
close all;
clear all;

files =dir('benchmark/*.png');
n= size(files);
blankImage=zeros(500,500);
blankImage=uint8(blankImage);
i=1;j=1;
for k =1:25
        if j==501
            i=i+100;
            j=1;
        end
        name =files(k).name;
        img_cuted=image_cut(name,100);
        blankImage(i:i+99,j:j+99)=img_cuted;
        j=j+100;   
        imshow(blankImage);
end


