A=zeros(1000,1000);
r = 100; %radius
m = {444,360}; %midpoint
A(m{:})=1;
B = bwdist(A) <= r;
imshow(B)