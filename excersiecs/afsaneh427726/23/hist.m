function his=hist(pic)
m=size(pic);
his=zeros(1,255);
for k=1:255
    s=0;
    for i=1:m(1)
        for j=1:m(2)
            if(pic(i,j)==k)
                s=s+1;
            end    
        end
    end
    his(k)=s;
end  