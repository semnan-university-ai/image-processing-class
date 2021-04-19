
close all
clear all
clc
image=zeros(50,200);
for i=1:4
  j=randi(10);
   inc="numbers\"+int2str(j-1)+".png";
   b=imread(inc);
   for m=1:100
       for k=1:100
           c=(i-1)*100+k;
           image(m,c)=(255-b(m,k));
       end
   end    
end 
figure;
image=im2bw(image);
imshow(image)
