close all;
clear all;
clc;

pic=imread('e3.png');
[x,y,z]= size(pic); 
ang= input("Enter a desired degree:");


rads=2*pi*ang/360;  

r=ceil(x*abs(cos(rads))+y*abs(sin(rads)));                      
c=ceil(x*abs(sin(rads))+y*abs(cos(rads)));                     


C=uint8(zeros([r c 3 ]));

x_out=ceil(r/2);                                                            
y_out=ceil(c/2);

midx=ceil((size(C,1))/2);
midy=ceil((size(C,2))/2);


for i=1:size(C,1)
    for j=1:size(C,2)                                                       

         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+x_out;
         y=round(y)+y_out;

         if (x>=1 && y>=1 && x<=size(pic,1) &&  y<=size(pic,2) ) 
              C(i,j,:)=pic(x,y,:);  
         end

    end
end

imshow(C);