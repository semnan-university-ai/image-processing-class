clc;
close all;
clear;

for i=1:4
    alphabetic=char(randi(+'AZ'));
    cap=strcat('alph\',alphabetic,'.png');
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
image_new=~capcha;
imshow(image_new)
