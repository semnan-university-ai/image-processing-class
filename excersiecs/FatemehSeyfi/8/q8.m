clc;
clear all;
close all;
img=imread('benchmark\lena.png'); 
[rowsi,colsi,z]= size(img);
%############## degree 45#################
angle=45;
rads=2*pi*angle/360;  
rowsf=ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
colsf=ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));  
% define an array withcalculated dimensionsand fill the array  with zeros ie.,black
d=uint8(zeros([rowsf colsf 3 ]));
%calculating center of original and final image
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);
midx=ceil((size(d,1))/2);
midy=ceil((size(d,2))/2);
for i=1:size(d,1)
    for j=1:size(d,2)                                                       
         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
             d(i,j,:)=img(x,y,:);  
         end

    end
end
figure
imshow(d);
title( ' 45 degrees')
%################# degree 90 ##################
angle=90;
rads=2*pi*angle/360;  
rowsf=ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
colsf=ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));  
f=uint8(zeros([rowsf colsf 3 ]));
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);
midx=ceil((size(f,1))/2);
midy=ceil((size(f,2))/2);
for i=1:size(d,1)
    for j=1:size(d,2)                                                       
         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
            f(i,j,:)=img(x,y,:);  
         end

    end
end
figure
imshow(f);
title( ' 90 degrees')
%################# degree 180 ##################
angle=180;
rads=2*pi*angle/360;  
rowsf=ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
colsf=ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));  
c=uint8(zeros([rowsf colsf 3 ]));
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);
midx=ceil((size(c,1))/2);
midy=ceil((size(c,2))/2);
for i=1:size(c,1)
    for j=1:size(c,2)                                                       
         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
            c(i,j,:)=img(x,y,:);  
         end

    end
end
figure
imshow(c);
title( ' 180 degrees')
%################# degree 120 ##################
angle=120;
rads=2*pi*angle/360;  
rowsf=ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
colsf=ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));  
p=uint8(zeros([rowsf colsf 3 ]));
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);
midx=ceil((size(p,1))/2);
midy=ceil((size(p,2))/2);
for i=1:size(p,1)
    for j=1:size(p,2)                                                       
         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
            p(i,j,:)=img(x,y,:);  
         end

    end
end
figure
imshow(p);
title( ' 120 degrees')


