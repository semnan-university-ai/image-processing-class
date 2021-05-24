function R = Rotate(img,zaviea)

[row,col]= size(img); 
rads=2*pi*zaviea/360;  
 rows=row;                      
 cols=col;
R=uint8(zeros([rows cols]));
RX=ceil(row/2);                                                            
RY=ceil(col/2);
mx=ceil((size(R,1))/2);
my=ceil((size(R,2))/2);
for i=1:size(R,1)
    for j=1:size(R,2)                                                       
         a= (i-mx)*cos(rads)+(j-my)*sin(rads);                                       
         b= -(i-mx)*sin(rads)+(j-my)*cos(rads);                             
         a=round(a)+RX;
         b=round(b)+RY;

         if (a>=1 && b>=1 && a<=size(img,1) &&  b<=size(img,2) ) 
              R(i,j,:)=img(a,b,:);  
         end

    end
end

end

