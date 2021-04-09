close all
clear all
clc
a=0;
% Because chess plate is squrae so we need only one number as dimension
while (a<8)
 a=input("Please enter a number as the chess dimension more than 8 (for a better vision enter a number more than 100) : ");
end
n=a*a;
b=floor(a/8);
c=mod(a,8);
chess=zeros(1,2);
s=0;
for i=1:8
    for j=1:8
        for ii=1:b
            for jj=1:b
                r=(i-1)*b+ii;
                c=(j-1)*b+jj;
                chess(r,c)=s;
            end
        end
        s=1-s;
    end
    s=1-s;
end

imshow(chess)