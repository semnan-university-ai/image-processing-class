function [y]=chanelhist(img)
[r,c]=size(img);
y=zeros(1,256);
for i=1:r
 for j=1:c
    z=img(i,j);
    y(z+1)=y(z+1)+1;
 end
end


% ????