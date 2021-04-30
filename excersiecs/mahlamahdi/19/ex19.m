close all
clear all
clc
pic=zeros(100,500);
pic(1:100,100)=1;
pic(1:100,200)=1;
pic(1:100,300)=1;
pic(1:100,400)=1;

imshow(pic)
for i=1:5
d=randi([0 3]);
   add="char\"+int2str(d)+".png";
   a=imread(add);
   for r=1:100
       for k=1:100
           c=(i-1)*100+k;
           pic(r,c)=255-a(r,k);
       end    
   end
end
imshow(pic)