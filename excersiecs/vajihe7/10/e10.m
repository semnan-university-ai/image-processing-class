close all;
clear all;
clc;
image=zeros(50,200);
for i=1:5
  a=randi(10);
   x="number\"+int2str(a-1)+".png";
   b=imread(x);
   for j=1:100
       for k=1:100
           c=(i-1)*100+k;
           image(j,c)=(255-b(j,k));
       end
   end    
end 
figure;
image=im2bw(image);
imshow(image)