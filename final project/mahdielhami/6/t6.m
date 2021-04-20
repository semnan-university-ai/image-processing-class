clc;
close all;
clear all;
temp = zeros(500, 500);
color=1;
for i=1:500
    
    for j=1:500
      temp(i,j)=color;
       
       
    end
   if mod(i,10)==0
          color=color+5;
       end
end
temp = uint8(temp);
imshow(temp);
