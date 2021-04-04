clc;
close all;
clear all;
temp = zeros(512, 512);
%------------------------------------
row=300;
col=700;
pok1=70;
pok2=70;
for x=row/2-pok1:1:row/2+pok1
    for y=col/2-pok2:1:col/2+pok2
        temp(x,y)=1;
    end
end
%-------------------------------------

row=400;
col=200;
pok1=80;
pok2=30;
for x=row-pok1:1:row+pok1
    for y=col/2-pok2:1:col/2+pok2
        temp(x,y)=1;
    end
end
%--------------------------------

for i=250:1:350
     
    for j=250:i
        temp(i,j)=255;
    end
      
end


%--------------------------------
 
 
 for i=1:50
     for j=1:2*100+1
         if (j>=50-i+2 && j<=50+i)
             temp(i,j)=255;
         end
     end
 end
 
for i=1:50
    for j=1:100
        if temp(i,j)==255
            t=50-i;
            s=50+t;
            temp(s,j)=255;
            
        end
       
    end
end


%----------------------------------
imshow(temp);


            