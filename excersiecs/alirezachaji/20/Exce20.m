close all
clear all
clc
fid = fopen('a.bin');
tline = fgetl(fid);
a=zeros(116,400);
g=1;
while ischar(tline)
    tline = fgetl(fid);
    a(g,:)=tline;
    g=g+1;
end
for i=1:116
    for j=1:400
        if(a(i,j)==48)
            a(i,j)=1;
        else
            a(i,j)=0;
        end
    end
end
b=logical(a);
imshow(b);
imwrite(b,'alireza.png');
