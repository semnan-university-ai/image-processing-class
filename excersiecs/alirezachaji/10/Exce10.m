close all
clear all
clc
pic=zeros(100,400);
for i=1:4
   d=randi(10);
   f=randi(100);
   add="images\numbers\"+int2str(d-1)+".png";
   a=imread(add);
   g=randi(30);
   d=randi(360);
   b=captcha_rotate(a,d);
   
   for r=f+1:f+100
       for k=g:100+g
           c=(i-1)*100+k;
           pic(r,c)=(b(r-f,k));
       end
   end    
end 
figure;
pic=im2bw(pic);
imshow(pic)
