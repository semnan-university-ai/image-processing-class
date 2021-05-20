function [f]=rotate(a)
p=randi(6);
m=zeros(25);
    if p==1
      f= imrotate(a,25);
      f=imcrop(f,[5,5,24,24]);
      m(1:18,:)=f(4:21,:);      
    end
    if p==2
      f= imrotate(a,35);
      f=imcrop(f,[5,5,24,24]);
      m(8:25,:)=f(4:21,:);      
    end
    if p==3
      f= imrotate(a,45);
      f=imcrop(f,[5,5,24,24]);
      m(1:18,:)=f(4:21,:);     
    end
    if p==4 
       f= imrotate(a,60);       
       f=imcrop(f,[5,5,24,24]);
       m(8:25,:)=f(4:21,:);       
    end
    if p==5 
        f=a;       
       m(1:18,:)=a(4:21,:);      
    end
    
    if p==6 
       f= imrotate(a,15);
       f=imcrop(f,[5,5,24,24]);
       m(8:25,:)=f(4:21,:);
       
    end
end