close all
clear all
clc
a=imread("benchmark\mountain.png");
imshow(a)
a=uint8(a);
a(150,193:207)=1;
for j=2:640
    t=0;
    s=1;
    for i=2:480
        if (a(i,j)<200)
            t=1;
        end  
        if ((t==0) && (a(i,j)>150))
            a(i,j)=1; 
        end  
        if(s==1)&&(t==1)
          a(i,j)=1;
          s=0;
        end   
    end 
    
end
a=uint8(a);
figure;
imshow(a)