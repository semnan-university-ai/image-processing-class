close all
clear all
clc
image=imread("zelda.png");
figure;
imshow(image)
for i=250:285 %hazf chap
     for j=202:260
        image(i,j)=image(i,j+180);
     end
 
  end
 for i=250:285 %hazf rast
     for j=300:355
        image(i,j)=image(i+35,j);
     end
 
 end
  
 figure;
 imshow(image)