m= input('tedade satr ra vared konid=');
n= input('tedade sotun ra vared konid=');
a=1;

for i=1:1:m
    
    for j=1:1:n
       
          if a==0
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1])
            a=1;
        else
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0])
            a=0;
        end
        
    end
   
      if rem(j+1,2)==1
            if a==0
            a=1;
            else
            a=0;
            end
        end
     
end