close all
clear all
clc
t=zeros(8,1);
image = imread("../../../benchmark/airplane.png");
[m,n] = size(image);

for i=1:m
    for j=1:n
        image(i,j) = 255 - image(i,j);
    end
end
s=1;
avg=zeros(8,1);
v=1;
for i=.1:.1:.8
   image1 = imnoise(image,"salt & pepper",i);
   avg(1,s) = mean(image1(:));
   subplot(2,4,s);
   imshow(image1);
   title(avg(1,s));
   s=s+1;
end
avg=uint8(avg);
g(1:8,1)=avg(1,:);

% ---------------------table----------
T = array2table(g,'VariableNames', {'avg'})

h={'avg'};

f=figure;
t=uitable(f,'data',g,'columnname',h);
