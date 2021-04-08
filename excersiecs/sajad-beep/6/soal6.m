clc;
clear;
X = zeros (100,100);
for i=1:100
    for j=1:100 
        
        if(mod(i,2)==1 || (i<20 && j>80))
          X(i,j)=0;
       
        else
              X(i,j)=255;
       
        
         end
        end
end
for i=1:100
    for j=1:100 
         if (i>80)
              X(i,j)=255;
         end
        end
    end
imshow(X);