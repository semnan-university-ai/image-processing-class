  
function [canal]=hister(img)
[X,Y]=size(img);
canal=zeros(1,256);
for i=1:X
 for j=1:Y
    z=img(i,j);
    canal(z+1)=canal(z+1)+1;
 end
end