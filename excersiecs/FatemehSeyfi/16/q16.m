close all
clear all
clc
image=imread("benchmark/zelda.png");

figure;
imshow(image)
for i=250:285 
     for j=200:260
        image(i,j)=image(i,j+200);
     end
 
  end
 for i=250:285
     for j=300:355
        image(i,j)=image(i+40,j);
     end
 
 end
 figure;
 imshow(image)
