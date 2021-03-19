clc;
clear data;
clear all;

w=zeros(512);
j=1
for i=0:255
    w(j,:)=i;
    j=j+1;
    w(j,:)=i;
    j=j+1;
end
w=uint8(w);
imshow(w)





