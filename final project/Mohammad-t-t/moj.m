function [ t1 ] = moj( numbers,num )

t1=numbers(:,:,1);
t1(:,:)=0;
[hi wi]=size(t1);
d=fix(hi/2);
t2=t1;


row=randi([1 3]);

if row ==1

    
for i=1:20
t2(:,i+5)=numbers(:,i,num);
end
    
    x=1;
    for j=5 : d
        for i=1:(hi)
           if i+x> 25
               break
           end
    
        t1(j,i)=t2(j,i+x);
        end
        x=x+1;
    end
    for j=d+1:hi-5
        for i=1:(hi)
            if i+x> 25
                break
            end
    
            t1(j,i)=t2(j,i+x);
        end
        x=x-1;
    end
    
elseif row==2

    
for i=1:20
t2(:,i)=numbers(:,i+5,num);
end
    x=1;
    for j=5 : d
        for i=1:(hi)
           if i+x> 25
               break
           end
    
        t1(j,i+x)=t2(j,i);
        end
        x=x+1;
    end
    for j=d+1:hi-5
        for i=1:(hi)
            if i+x> 25
                break
            end
    
            t1(j,i+x)=t2(j,i);
        end
        x=x-1;
    end
else
    t1(:,:)=numbers(:,:,num);
end
end

