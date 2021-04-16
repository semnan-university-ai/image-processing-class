close all
clear all
clc

capcha=zeros(100,350);

for i=1:4
   rand=randi(10);
   cap=strcat('numbers\',int2str(rand),'.png');
   a=imread(cap);
   
   for r=1:100
       for k=1:100
           c=(i-1)*100+k;
           capcha(r,c)=(255-a(r,k));
       end
   end    
end 

figure;
capcha=im2bw(capcha);
imshow(capcha)





