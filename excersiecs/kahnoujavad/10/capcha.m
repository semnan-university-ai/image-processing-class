close all
clear all
clc
img=zeros(100,400);
for i=1:4
   r1=randi(10);
   r2=randi(100);
   pic="picture\number\"+int2str(r1-1)+".png";
   a=imread(pic);
   g=randi(30);
   r1=randi(360);
   b=captcha_rotate(a,r1);
   
   for r=r2+1:r2+100
       for k=g:100+g
           c=(i-1)*100+k;
           img(r,c)=(b(r-r2,k));
       end
   end    
end 
figure;
img=im2bw(img);
imshow(img)
