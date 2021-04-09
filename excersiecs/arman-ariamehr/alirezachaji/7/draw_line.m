function pic=draw_line(pic,ax,ay,bx,by)
apos=[ax ay];
bpos=[bx by];
         if (apos(1)==bpos(1))
             m=1;
             if (apos(2)>bpos(2))
                 pic(apos(1),bpos(2):apos(2))=1;
             else
                 pic(apos(1),apos(2):bpos(2))=1;
             end
         else
             m=(abs(bpos(2)-apos(2))/abs(bpos(1)-apos(1)));
         end
if (apos(1)>bpos(1))
    if (bpos(2)<apos(2))
        m=m*-1;
    end    
    l=abs(apos(1)-bpos(1))
    for i=1:l
         j=round(m*i);
         ii=apos(1)-i;
         jj=j+apos(2);
         if (apos(1)==bpos(1))
             ii=apos(1);
         end
         pic(ii,jj)=1;
    end   
end  

if (apos(1)<bpos(1)) 
    l=abs(bpos(1)-apos(1))
    for i=1:l
         j=round(m*i);
         ii=bpos(1)-i;
         if (bpos(2)<apos(2))
             jj=bpos(2)+j;
         elseif (bpos(2)>apos(2))
             jj=bpos(2)-j;
         else
             jj=bpos(2);
         end 
         if (apos(1)==bpos(1))
             ii=apos(1);
         end    
         pic(ii,jj)=1;
    end   
end 
imshow(pic)
