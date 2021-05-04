function his=ch_hist(pic)
n=size(pic);
his=zeros(1,255);
x=[1:255];
for k=1:255
    s=0;
    for i=1:n(1)
        for j=1:n(2)
            if(pic(i,j)==k)
                s=s+1;
            end    
        end
    end
    his(k)=s;
end  
