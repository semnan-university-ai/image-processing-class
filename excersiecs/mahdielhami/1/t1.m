clc;
close all;
clear all;
temp = zeros(1000, 1000);
color=[0,255,0,255;255,0,255,0;0,255,0,255;255,0,255,0];
pos=[1,250;251,500;501,750;751,1000];
for n=1:4
for i = pos(n,1): pos(n,2)
    for m=1:4
      
      for j = pos(m,1): pos(m,2)
             temp(i,j)=color(n,m);
      end
    end
    
end
end
imshow(temp);

