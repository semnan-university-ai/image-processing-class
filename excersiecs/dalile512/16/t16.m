close all
clear all
clc
image=imread('zelda.png');
for i=255:290 
     for j=200:260
        image(i,j)=150;
     end
end

 for i=252:289 
     for j=303:353
        image(i,j)=150;
     end
 end
 figure;
 imshow(image)