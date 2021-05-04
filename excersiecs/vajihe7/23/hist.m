function his=hist(image1)

his=zeros(1,255);
pic=size(image1);

for i=1:255
    a=0;
    for j=1:pic(1)
        for k=1:pic(2)
            if(image1(j,k)==i)
                a=a+1;
            end    
        end
    end
    his(i)=a;
end  