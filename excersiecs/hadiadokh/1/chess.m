clc;
close all;
clear; 

a=250;
b=30;
chess = zeros(a);
for i=1:b*2:a
    for j=1:b*2:a
       chess(0+i:b+i-1,0+j:b+j-1)=1;
       chess(b+i:b*2+i-1,b+j:b*2+j-1)=1;
    end
end
imshow(chess); 