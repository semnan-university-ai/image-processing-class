close all
clear all
clc
pic=zeros(100,400);
pic(1:100,100:100:400)=1;
for i=1:4
   s='a':'z';
   str=s(randi(numel(s)));
   add="images\letters\"+str+".png";
   a=imread(add);
   for r=1:100
       for k=1:100
           c=(i-1)*100+k;
           pic(r,c)=(255-a(r,k));
       end
   end    
end 
figure;
pic=im2bw(pic);
imshow(pic)

