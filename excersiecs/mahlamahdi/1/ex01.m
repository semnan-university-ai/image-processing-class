close all
clear all
clc
row = input('Number of Row: ');
colum = input('Number Of Column:');
for i=1:row
        for j=1:colum
            if mod((i+j),2)==0
                image(i,j)=0;
            else  
                 image(i,j)=1;
            end
        end
end
imshow(image);