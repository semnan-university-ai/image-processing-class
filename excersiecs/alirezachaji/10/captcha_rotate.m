function pic2=captcha_rotate(pic,angel)
n=size(pic);
v=deg2rad(angel);
r=ceil(n(1)*abs(cos(v))+n(2)*abs(sin(v)));                      
c=ceil(n(1)*abs(sin(v))+n(2)*abs(cos(v)));                     
pic2=zeros(r,c,n(3));
pic2=uint8(pic2);
midx=ceil((size(pic2,1))/2);
midy=ceil((size(pic2,2))/2);
pic=255-pic;
for i=1:size(pic2,1)
    for j=1:size(pic2,2)                                                       
         xx= round((i-midx)*cos(v)+(j-midy)*sin(v)+ceil(n(1)/2));                                       
         yy= round(-(i-midx)*sin(v)+(j-midy)*cos(v)+ceil(n(2)/2));                             
         if (xx>=1 && yy>=1 ) 
             if ( xx<=n(1) &&  yy<=n(2) ) 
               pic2(i,j,1:n(3))=pic(xx,yy,1:n(3));  
             end  
         end
    end
end

