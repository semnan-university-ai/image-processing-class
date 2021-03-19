clc;
clear data;
clear all;

w=zeros(256);
j=1
m=0
for i=0:32
    w(j:j+7,:)=m;
    j=j+8;
    m=m+8;
    
end
w=uint8(w);
imshow(w)
