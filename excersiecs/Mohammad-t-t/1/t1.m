
clc;
close all;
clear;

row=8; 
cloum=8; 
size=100; 

image = zeros(size*row,size*cloum);

w=1;
z=1;

for y=1 : row 
    if (mod( y , 2 )) == 0 
        z=size;
    else
        z=1;
    end
                
    for x=1 : 2: cloum-1 
        
        for i=w : w+size 
            for j=z : z+size
                image(i,j)=255;
            end
        end
        z=z+(size*2);
    end
    z=1;  
    w=w+size;
end

imshow(image);
