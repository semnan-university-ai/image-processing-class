close all
clear all
clc
img=zeros(100,400);
img(1:100,100:100:400)=1;
for i=1:4
   r1='a':'z';
   r2=r1(randi(numel(r1)));
   pic="chare\letters\"+r2+".png";
   a=imread(pic);
   for r=1:100
       for k=1:100
           c=(i-1)*100+k;
           img(r,c)=(255-a(r,k));
       end
   end    
end 
figure;
img=im2bw(img);
imshow(img)