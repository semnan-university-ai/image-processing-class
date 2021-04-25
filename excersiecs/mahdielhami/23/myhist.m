function [] = myhist(a)
subplot(3,1,1);
imshow(a);
title('original image');
[r,c]=size(a);
z=zeros(1,256);
for i=1:r
for j=1:c
b=a(i,j);
z(b+1)=z(b+1)+1;
end
end
N=sum(z);
p=zeros(1,256);
s=zeros(1,256);
c=zeros(1,256);
r=zeros(1,256);
for k=1:256
p(k)=z(k)/N;
if k==1
c(k)=p(k);
s(k)=c(k)*255;
r(k)=floor(s(k));
else
c(k)=c(k-1)+p(k);
s(k)=c(k)*255;
r(k)=floor(s(k));
end
end
subplot(3,1,3)
stem(r,z)
title('histogram')