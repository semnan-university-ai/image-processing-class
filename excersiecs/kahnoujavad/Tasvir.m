clc;
close all;
clear; 

img=zero(255*3);

for i= 0:255
        img(i*3)+1:(i*3)+3,1:256*3)=i/255; 
        targetimg(i,y+j,:) = img(i,y-j+1,:);
        
end
imgshow(img);
