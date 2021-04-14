
<div dir="rtl">
  
  clc;
close all;
clear;

img=imread('d:\panda.jpg');
[rowsi,colsi,z]= size(img); 

angle=45;

rads=2*pi*angle/360;  

%mohasebe araye be gonei ke tasvir charkhande shode daghigh dar an jaa
%biyoftad


rowsf=ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
colsf=ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));                     


C=uint8(zeros([rowsf colsf 3 ]));

% mohasebe tasvir asli va nahaeee
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);

midx=ceil((size(C,1))/2);
midy=ceil((size(C,2))/2);

% dar in halghe mokhtasat marbot be halghe a mohasebe mishavad
% for baraye har pixel c , va shedat an pas az barresi ekhtesas dade shode

for i=1:size(C,1)
    for j=1:size(C,2)                                                       

         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
              C(i,j,:)=img(x,y,:);  
         end

    end
end

imshow(C);

% 
% az site estefade shode
% stackoverflow.com
  
  
  </div>
