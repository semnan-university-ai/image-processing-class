clc;
close all;
clear;
files= dir('img');
files=files(3:end,:);
for i=1:25
    image= imread(files(i).name);
   imgcut=image(size(image,1)-100:size(image,1),size(image,2)-100:size(image,2),size(image,3));
   mo=mod(i-1,5)*100;di=fix((i-1)/5)*100;
   img(di+1:di+101,mo+1:mo+101,:)=imgcut(1:101,1:101,:);
 
end

imshow(img);