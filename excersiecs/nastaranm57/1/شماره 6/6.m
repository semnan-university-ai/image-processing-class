m= input('arz ra vared konid=');
n= input('tul ra vared konid=');
a=1;
if rem(m,2)==0 %baraye zamani ke andazeye arz adade zoj bashd
    for i=1:1:m
    a=a+1 
    for j=1:1:n
       
          if a==1
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0], 'linestyle','none')
          else if a==m
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
          else if rem(a,2)==0
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
          else if rem(a,2)==1
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0], 'linestyle','none')
                  end
              end
              end
        end
        
    end
   
     
    end
else if rem(m,2)==1 %baraye zamani ke andazeye arz adade fard bashd
        for i=1:1:m
         a=a+1 
         for j=1:1:n
         
          if a==1
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0], 'linestyle','none')
          else if a==m
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
            else if a==m-1
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
          else if rem(a,2)==0
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
          else if rem(a,2)==1
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0], 'linestyle','none')
                  end
              end
              end
              end
          end
         end
        end
    end
   
     
end
    
