function pic=draw_circle(pic,r,cx,cy)

pic2=zeros(1500,1500);

for i=1:r
    y=round(sqrt((r^2)-(i^2)));
    xx=r-y+1;
    yy=r+i;
    pic2(xx,yy)=1;
    pic2(yy,xx)=1;
    xx=(2*r)-xx;
    pic2(xx,yy)=1;
    pic2(yy,xx)=1;
    yy=r-(yy-r)+1;
    pic2(xx,yy)=1;  
end  
for i=1:r-1
    for j=1:2*r
        pic2(r-i,j)=pic2(r+i,j);
    end
end    
for i=1:2*r
    for j=1:2*r
        pic(cx-r+i,cy-r+j)=pic2(i,j);
    end
end    
        
   
imshow(pic)    
    

